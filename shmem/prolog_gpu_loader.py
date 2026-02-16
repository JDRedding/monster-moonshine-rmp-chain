#!/usr/bin/env python3
# Load Prolog KB directly into GPU memory

import polars as pl
try:
    import cudf
    GPU_AVAILABLE = True
except:
    GPU_AVAILABLE = False

def load_prolog_kb_to_gpu():
    # Load from parquet
    df = pl.read_parquet('shmem/prolog_kb.parquet')
    print(f'✅ Loaded {len(df)} Prolog facts')
    print(f'   Columns: {df.columns}')
    print()
    
    if GPU_AVAILABLE:
        # Convert to cudf (GPU)
        gpu_df = cudf.from_pandas(df.to_pandas())
        print(f'🎮 Loaded to GPU: {len(gpu_df)} rows')
        print(gpu_df.head(10))
        return gpu_df
    else:
        print('⚠️  GPU not available, using CPU')
        print(df.head(10))
        return df

def query_prolog_gpu(df, predicate):
    """Query Prolog facts on GPU"""
    if GPU_AVAILABLE:
        result = df[df['predicate'] == predicate]
    else:
        result = df.filter(pl.col('predicate') == predicate)
    return result

if __name__ == '__main__':
    print('🧠 Prolog KB → GPU Loader')
    print('=' * 60)
    print()
    
    df = load_prolog_kb_to_gpu()
    
    print()
    print('📊 Query examples:')
    print()
    
    # Query tools
    tools = query_prolog_gpu(df, 'tool')
    print(f'Tools: {len(tools)} found')
    
    # Query conversions
    conversions = query_prolog_gpu(df, 'conversion')
    print(f'Conversions: {len(conversions)} found')
    
    # Query performance
    perf = query_prolog_gpu(df, 'performance')
    print(f'Performance metrics: {len(perf)} found')
