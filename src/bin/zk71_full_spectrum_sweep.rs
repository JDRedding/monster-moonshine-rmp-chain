// ZK71 Full Spectrum Sweep
// Overlay across HDD, shmem, GPU - search all zkprologml-erdfa shards

use polars::prelude::*;
use std::collections::HashMap;
use std::fs;
use std::path::Path;
use walkdir::WalkDir;

const MONSTER_PRIMES: [u64; 15] = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71];

#[derive(Debug)]
struct StorageLocation {
    layer: String,
    path: String,
    shard_id: u8,
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    println!("🌈 ZK71 Full Spectrum Sweep");
    println!("━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
    
    // Discover all storage layers
    let locations = discover_all_shards()?;
    println!("📡 Found {} shard locations across all layers", locations.len());
    
    // Load into unified index
    let mut unified = HashMap::new();
    
    for loc in &locations {
        if let Ok(df) = load_shard(&loc.path) {
            unified.entry(loc.shard_id)
                .or_insert_with(Vec::new)
                .push((loc.layer.clone(), df));
        }
    }
    
    println!("🔗 Unified {} shards", unified.len());
    
    // Full spectrum search
    let query = std::env::args().nth(1).unwrap_or_else(|| "lmfdb".to_string());
    println!("\n🔍 Searching for: '{}'", query);
    
    let mut total = 0;
    for (shard_id, layers) in &unified {
        let mut shard_matches = 0;
        
        for (layer, df) in layers {
            let matches = search_df(df, &query)?;
            if matches > 0 {
                println!("  Shard {:2} [{}]: {} matches", shard_id, layer, matches);
                shard_matches += matches;
            }
        }
        
        total += shard_matches;
    }
    
    println!("\n✅ Total: {} matches across all layers", total);
    
    // Generate sweep report
    generate_sweep_report(&unified, &query)?;
    
    Ok(())
}

fn discover_all_shards() -> Result<Vec<StorageLocation>, Box<dyn std::error::Error>> {
    let mut locations = Vec::new();
    
    // Layer 1: Shmem (primary)
    for i in 0..71 {
        let path = format!("shmem/zk-shards/shard_{:02}.parquet", i);
        if Path::new(&path).exists() {
            locations.push(StorageLocation {
                layer: "shmem".to_string(),
                path,
                shard_id: i,
            });
        }
    }
    
    // Layer 2: Prolog zkprolog-shards
    for entry in WalkDir::new("prolog/zkprolog-shards")
        .max_depth(1)
        .into_iter()
        .filter_map(|e| e.ok())
        .filter(|e| e.path().extension().map_or(false, |ext| ext == "pl"))
    {
        if let Some(name) = entry.file_name().to_str() {
            if name.starts_with("shard_") {
                if let Some(id_str) = name.strip_prefix("shard_").and_then(|s| s.strip_suffix(".pl")) {
                    if let Ok(id) = id_str.parse::<u8>() {
                        locations.push(StorageLocation {
                            layer: "prolog".to_string(),
                            path: entry.path().display().to_string(),
                            shard_id: id,
                        });
                    }
                }
            }
        }
    }
    
    // Layer 3: HDD (temp/ci_artifacts)
    if Path::new("temp/ci_artifacts").exists() {
        for entry in WalkDir::new("temp/ci_artifacts")
            .max_depth(2)
            .into_iter()
            .filter_map(|e| e.ok())
            .filter(|e| e.path().extension().map_or(false, |ext| ext == "parquet"))
        {
            let path = entry.path().display().to_string();
            let hash = md5::compute(path.as_bytes());
            let shard_id = hash.0[0] % 71;
            
            locations.push(StorageLocation {
                layer: "hdd".to_string(),
                path,
                shard_id,
            });
        }
    }
    
    Ok(locations)
}

fn load_shard(path: &str) -> Result<DataFrame, Box<dyn std::error::Error>> {
    if path.ends_with(".parquet") {
        Ok(ParquetReader::new(fs::File::open(path)?).finish()?)
    } else {
        // For .pl files, return empty (would need prolog parser)
        Err("Prolog files not yet supported".into())
    }
}

fn search_df(df: &DataFrame, query: &str) -> Result<usize, Box<dyn std::error::Error>> {
    let mut matches = 0;
    
    for col_name in df.get_column_names() {
        if let Ok(col) = df.column(col_name) {
            if let Ok(str_col) = col.str() {
                for opt_val in str_col.into_iter() {
                    if let Some(val) = opt_val {
                        if val.to_lowercase().contains(&query.to_lowercase()) {
                            matches += 1;
                        }
                    }
                }
            }
        }
    }
    
    Ok(matches)
}

fn generate_sweep_report(unified: &HashMap<u8, Vec<(String, DataFrame)>>, query: &str) -> Result<(), Box<dyn std::error::Error>> {
    let mut out = fs::File::create("zk71_sweep_report.txt")?;
    use std::io::Write;
    
    writeln!(out, "ZK71 Full Spectrum Sweep Report")?;
    writeln!(out, "================================")?;
    writeln!(out, "Query: {}", query)?;
    writeln!(out)?;
    
    writeln!(out, "Storage Layers:")?;
    writeln!(out, "  • shmem: Shared memory (primary)")?;
    writeln!(out, "  • prolog: zkprologml-erdfa shards")?;
    writeln!(out, "  • hdd: Disk storage")?;
    writeln!(out)?;
    
    writeln!(out, "Shard Distribution:")?;
    for shard_id in 0..71 {
        if let Some(layers) = unified.get(&shard_id) {
            let prime = MONSTER_PRIMES[(shard_id % 15) as usize];
            writeln!(out, "  Shard {:2} (prime {:2}): {} layers", shard_id, prime, layers.len())?;
        }
    }
    
    println!("✅ Generated: zk71_sweep_report.txt");
    Ok(())
}
