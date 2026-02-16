// GPU Loader for 71 ZK Shards - Rust version

use polars::prelude::*;
use std::collections::HashMap;

const MONSTER_PRIMES: [u64; 15] = [2,3,5,7,11,13,17,19,23,29,31,41,47,59,71];

fn load_shard(shard_id: u8) -> Result<DataFrame, PolarsError> {
    let path = format!("shmem/zk-shards/shard_{:02}.parquet", shard_id);
    ParquetReader::new(std::fs::File::open(path)?)
        .finish()
}

fn load_all_shards() -> HashMap<u8, DataFrame> {
    let mut shards = HashMap::new();
    for i in 0..71 {
        if let Ok(df) = load_shard(i) {
            shards.insert(i, df);
        }
    }
    shards
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    println!("🚀 Loading 71 ZK shards...");
    let shards = load_all_shards();
    println!("✅ Loaded {} shards", shards.len());
    
    // Show shard info
    for (id, df) in shards.iter().take(5) {
        println!("  Shard {:02}: {} rows × {} cols", 
                 id, df.height(), df.width());
    }
    
    Ok(())
}
