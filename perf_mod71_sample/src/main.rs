// Perf Data Mod 71 Sampler
// Analyzes large perf.data files for patterns modulo 71

use std::fs::File;
use std::io::{BufRead, BufReader};

fn main() {
    let perf_file = std::env::args()
        .nth(1)
        .unwrap_or_else(|| "/mnt/data1/datasets/llama.cpp/2023/data/perf_pin/log2023-11-19-00-11:00:30_12.perf.report".to_string());
    
    println!("Perf Data Mod 71 Analysis");
    println!("File: {}\n", perf_file);
    
    // Distribution buckets for mod 71
    let mut buckets = vec![0u64; 71];
    let mut total_samples = 0u64;
    
    // Read perf report (text format, much smaller than .perf binary)
    if let Ok(file) = File::open(&perf_file) {
        let reader = BufReader::new(file);
        
        for line in reader.lines().flatten() {
            // Parse addresses from perf report
            // Format: "  12.34%  program  [.] 0x00007f1234567890"
            if let Some(addr_str) = line.split_whitespace()
                .find(|s| s.starts_with("0x")) 
            {
                if let Ok(addr) = u64::from_str_radix(&addr_str[2..], 16) {
                    let bucket = (addr % 71) as usize;
                    buckets[bucket] += 1;
                    total_samples += 1;
                    
                    if total_samples % 10000 == 0 {
                        print!("\rProcessed {} samples...", total_samples);
                    }
                }
            }
        }
    } else {
        eprintln!("Could not open file: {}", perf_file);
        return;
    }
    
    println!("\n\nResults:");
    println!("Total samples: {}", total_samples);
    
    if total_samples == 0 {
        println!("No samples found");
        return;
    }
    
    let expected = total_samples as f64 / 71.0;
    
    println!("\nDistribution (mod 71):");
    println!("Bucket | Count | Expected | Deviation");
    println!("-------|-------|----------|----------");
    
    let mut chi_squared = 0.0;
    
    for (i, &count) in buckets.iter().enumerate() {
        let deviation = count as f64 - expected;
        let rel_dev = (deviation / expected) * 100.0;
        
        chi_squared += (deviation * deviation) / expected;
        
        if count > 0 {
            println!("{:6} | {:5} | {:8.1} | {:+7.2}%", 
                     i, count, expected, rel_dev);
        }
    }
    
    println!("\nChi-squared statistic: {:.2}", chi_squared);
    println!("Degrees of freedom: 70");
    println!("Critical value (p=0.05): 90.53");
    
    if chi_squared > 90.53 {
        println!("*** NON-UNIFORM DISTRIBUTION DETECTED ***");
    } else {
        println!("Distribution appears uniform");
    }
    
    // Check for Monster prime resonances
    println!("\nMonster Prime Bucket Analysis:");
    let monster_primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71];
    
    for &p in &monster_primes {
        if p < 71 {
            let count = buckets[p as usize];
            let deviation = (count as f64 - expected) / expected * 100.0;
            println!("Prime {}: {} samples ({:+.2}%)", p, count, deviation);
        }
    }
}
