#!/usr/bin/env python3
# GPU Loader for 71 ZK Shards

import polars as pl
import numpy as np
try:
    import cupy as cp
    GPU_AVAILABLE = True
except:
    GPU_AVAILABLE = False

MONSTER_PRIMES = [2,3,5,7,11,13,17,19,23,29,31,41,47,59,71]

def load_shard(shard_id):
    path = f'shmem/zk-shards/shard_{shard_id:02d}.parquet'
    return pl.read_parquet(path)

def lift_to_gpu(df):
    if not GPU_AVAILABLE:
        return df.to_numpy()
    return cp.array(df.to_numpy())

def load_all_shards():
    shards = {}
    for i in range(71):
        try:
            shards[i] = load_shard(i)
        except:
            pass
    return shards

if __name__ == '__main__':
    print('🚀 Loading 71 ZK shards...')
    shards = load_all_shards()
    print(f'✅ Loaded {len(shards)} shards')
    
    if GPU_AVAILABLE:
        print('🎮 Lifting to GPU...')
        gpu_shards = {k: lift_to_gpu(v) for k, v in shards.items()}
        print(f'✅ {len(gpu_shards)} shards on GPU')
