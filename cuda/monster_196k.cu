// CUDA kernels for Monster 196k operations
#include <cuda_runtime.h>
#include <device_launch_parameters.h>

#define DIMS 196883
#define REPS 194
#define SHARDS 71
#define THREADS_PER_BLOCK 256

// Encode data to Monster vector
__global__ void encode_kernel(
    const unsigned char* data,
    int data_len,
    unsigned char shard_id,
    float* coords
) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (idx >= DIMS) return;
    
    int start = (shard_id * DIMS) / SHARDS;
    int end = ((shard_id + 1) * DIMS) / SHARDS;
    
    if (idx >= start && idx < end && (idx - start) < data_len) {
        coords[idx] = data[idx - start] / 255.0f;
    } else {
        coords[idx] = 0.0f;
    }
}

// Hecke operator T_p
__global__ void hecke_kernel(
    const float* coords_in,
    unsigned int prime,
    float* coords_out
) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (idx >= DIMS) return;
    
    int new_idx = (idx * prime) % DIMS;
    coords_out[idx] = coords_in[new_idx];
}

// Inner product reduction
__global__ void inner_product_kernel(
    const float* coords1,
    const float* coords2,
    float* partial_sums
) {
    __shared__ float sdata[THREADS_PER_BLOCK];
    
    int tid = threadIdx.x;
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    
    float sum = 0.0f;
    if (idx < DIMS) {
        sum = coords1[idx] * coords2[idx];
    }
    sdata[tid] = sum;
    __syncthreads();
    
    // Reduction in shared memory
    for (int s = blockDim.x / 2; s > 0; s >>= 1) {
        if (tid < s) {
            sdata[tid] += sdata[tid + s];
        }
        __syncthreads();
    }
    
    if (tid == 0) {
        partial_sums[blockIdx.x] = sdata[0];
    }
}

// Norm (sqrt of inner product with self)
__global__ void norm_kernel(
    const float* coords,
    float* partial_sums
) {
    __shared__ float sdata[THREADS_PER_BLOCK];
    
    int tid = threadIdx.x;
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    
    float sum = 0.0f;
    if (idx < DIMS) {
        sum = coords[idx] * coords[idx];
    }
    sdata[tid] = sum;
    __syncthreads();
    
    for (int s = blockDim.x / 2; s > 0; s >>= 1) {
        if (tid < s) {
            sdata[tid] += sdata[tid + s];
        }
        __syncthreads();
    }
    
    if (tid == 0) {
        partial_sums[blockIdx.x] = sdata[0];
    }
}

// Host functions
extern "C" {

void monster_encode_gpu(
    const unsigned char* data,
    int data_len,
    unsigned char shard_id,
    float* coords_out
) {
    unsigned char* d_data;
    cudaMalloc(&d_data, data_len);
    cudaMemcpy(d_data, data, data_len, cudaMemcpyHostToDevice);
    
    int blocks = (DIMS + THREADS_PER_BLOCK - 1) / THREADS_PER_BLOCK;
    encode_kernel<<<blocks, THREADS_PER_BLOCK>>>(d_data, data_len, shard_id, coords_out);
    
    cudaFree(d_data);
}

void monster_hecke_gpu(
    const float* coords_in,
    unsigned int prime,
    float* coords_out
) {
    int blocks = (DIMS + THREADS_PER_BLOCK - 1) / THREADS_PER_BLOCK;
    hecke_kernel<<<blocks, THREADS_PER_BLOCK>>>(coords_in, prime, coords_out);
}

void monster_inner_product_gpu(
    const float* coords1,
    const float* coords2,
    float* result
) {
    int blocks = (DIMS + THREADS_PER_BLOCK - 1) / THREADS_PER_BLOCK;
    float* d_partial;
    cudaMalloc(&d_partial, blocks * sizeof(float));
    
    inner_product_kernel<<<blocks, THREADS_PER_BLOCK>>>(coords1, coords2, d_partial);
    
    // Final reduction on CPU
    float* h_partial = new float[blocks];
    cudaMemcpy(h_partial, d_partial, blocks * sizeof(float), cudaMemcpyDeviceToHost);
    
    *result = 0.0f;
    for (int i = 0; i < blocks; i++) {
        *result += h_partial[i];
    }
    
    delete[] h_partial;
    cudaFree(d_partial);
}

void monster_norm_gpu(
    const float* coords,
    float* result
) {
    int blocks = (DIMS + THREADS_PER_BLOCK - 1) / THREADS_PER_BLOCK;
    float* d_partial;
    cudaMalloc(&d_partial, blocks * sizeof(float));
    
    norm_kernel<<<blocks, THREADS_PER_BLOCK>>>(coords, d_partial);
    
    float* h_partial = new float[blocks];
    cudaMemcpy(h_partial, d_partial, blocks * sizeof(float), cudaMemcpyDeviceToHost);
    
    float sum = 0.0f;
    for (int i = 0; i < blocks; i++) {
        sum += h_partial[i];
    }
    *result = sqrtf(sum);
    
    delete[] h_partial;
    cudaFree(d_partial);
}

} // extern "C"
