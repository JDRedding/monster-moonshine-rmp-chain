// Perf to FRACTRAN Encoder
// Converts perf mod 71 distribution to FRACTRAN state

use std::fs::File;
use std::io::{BufRead, BufReader, Write};

fn main() {
    let perf_file = std::env::args()
        .nth(1)
        .unwrap_or_else(|| "/mnt/data1/datasets/llama.cpp/2023/data/perf_pin/log2023-11-19-00-11:00:30_12.perf.report".to_string());
    
    println!("Perf to FRACTRAN Encoder");
    println!("Input: {}\n", perf_file);
    
    // Monster primes (first 15 for encoding buckets 0-14)
    let primes = [2u64, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71];
    
    // Distribution buckets
    let mut buckets = vec![0u64; 71];
    let mut total_samples = 0u64;
    
    // Read perf data
    if let Ok(file) = File::open(&perf_file) {
        let reader = BufReader::new(file);
        
        for line in reader.lines().flatten() {
            if let Some(addr_str) = line.split_whitespace().find(|s| s.starts_with("0x")) {
                if let Ok(addr) = u64::from_str_radix(&addr_str[2..], 16) {
                    buckets[(addr % 71) as usize] += 1;
                    total_samples += 1;
                }
            }
        }
    }
    
    println!("Total samples: {}", total_samples);
    
    // Encode as FRACTRAN state: 2^b0 × 3^b1 × 5^b2 × ...
    println!("\nFRACTRAN State Encoding:");
    println!("(using first 15 Monster primes for buckets 0-14)\n");
    
    let mut fractran_state = String::from("State = ");
    let mut parts = Vec::new();
    
    for i in 0..15.min(buckets.len()) {
        if buckets[i] > 0 {
            parts.push(format!("{}^{}", primes[i], buckets[i]));
        }
    }
    
    fractran_state.push_str(&parts.join(" × "));
    println!("{}", fractran_state);
    
    // Generate FRACTRAN program for hot buckets
    println!("\nFRACTRAN Program (transitions between hot buckets):");
    
    let hot_buckets: Vec<_> = buckets.iter()
        .enumerate()
        .filter(|(_, &count)| count > 400) // Hot buckets
        .collect();
    
    println!("Hot buckets (>400 samples):");
    for (i, &count) in &hot_buckets {
        println!("  Bucket {}: {} samples", i, count);
    }
    
    // Generate transition fractions
    println!("\nTransition fractions:");
    for i in 0..hot_buckets.len() {
        for j in 0..hot_buckets.len() {
            if i != j {
                let (from_bucket, _) = hot_buckets[i];
                let (to_bucket, _) = hot_buckets[j];
                
                if *from_bucket < 15 && *to_bucket < 15 {
                    let from_prime = primes[*from_bucket];
                    let to_prime = primes[*to_bucket];
                    println!("  {}/{} : bucket {} → bucket {}", 
                             to_prime, from_prime, from_bucket, to_bucket);
                }
            }
        }
    }
    
    // Write compressed output
    let output_file = "perf_fractran.txt";
    if let Ok(mut file) = File::create(output_file) {
        writeln!(file, "# FRACTRAN Compressed Perf Data").ok();
        writeln!(file, "# Source: {}", perf_file).ok();
        writeln!(file, "# Total samples: {}", total_samples).ok();
        writeln!(file, "").ok();
        writeln!(file, "# State encoding:").ok();
        writeln!(file, "{}", fractran_state).ok();
        writeln!(file, "").ok();
        writeln!(file, "# Distribution (bucket: count):").ok();
        
        for (i, &count) in buckets.iter().enumerate() {
            if count > 0 {
                writeln!(file, "{}: {}", i, count).ok();
            }
        }
        
        println!("\nCompressed output written to: {}", output_file);
        
        // Calculate compression ratio
        let original_size = 10_000_000_000u64; // 10GB estimate
        let compressed_size = std::fs::metadata(output_file)
            .map(|m| m.len())
            .unwrap_or(0);
        
        if compressed_size > 0 {
            let ratio = original_size / compressed_size;
            println!("Compression ratio: {}:1", ratio);
        }
    }
}
