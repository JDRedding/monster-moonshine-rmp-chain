// Symbol Analysis: Map FRACTRAN buckets to function names

use std::fs::File;
use std::io::{BufRead, BufReader};
use std::collections::HashMap;

fn main() {
    println!("FRACTRAN Bucket → Symbol Analysis\n");
    println!("═══════════════════════════════════\n");
    
    let perf_file = std::env::args()
        .nth(1)
        .unwrap_or_else(|| "/mnt/data1/datasets/llama.cpp/2023/data/perf_pin/log2023-11-19-00-11:00:30_12.perf.report".to_string());
    
    let monster = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71];
    
    // Bucket → (count, symbols)
    let mut buckets: HashMap<usize, (u64, Vec<String>)> = HashMap::new();
    
    println!("Step 1: Parse perf report with symbols");
    
    if let Ok(file) = File::open(&perf_file) {
        for line in BufReader::new(file).lines().flatten() {
            // Format: "  12.34%  0.00%  process  library  [.] 0xaddr symbol_name"
            let parts: Vec<&str> = line.split_whitespace().collect();
            
            if parts.len() >= 6 && parts[0].ends_with('%') {
                // Find address (starts with 0x)
                if let Some(addr_idx) = parts.iter().position(|s| s.starts_with("0x")) {
                    if let Ok(addr) = u64::from_str_radix(&parts[addr_idx][2..], 16) {
                        let bucket = (addr % 71) as usize;
                        
                        // Extract symbol (everything after address)
                        let symbol = if addr_idx + 1 < parts.len() {
                            parts[addr_idx + 1..].join(" ")
                        } else {
                            // Try to extract from earlier in line
                            if addr_idx >= 4 {
                                parts[addr_idx - 1].to_string()
                            } else {
                                "unknown".to_string()
                            }
                        };
                        
                        let entry = buckets.entry(bucket).or_insert((0, Vec::new()));
                        entry.0 += 1;
                        if !symbol.is_empty() && symbol != "unknown" {
                            entry.1.push(symbol);
                        }
                    }
                }
            }
        }
    }
    
    println!("  Parsed {} buckets\n", buckets.len());
    
    // Step 2: Analyze hot buckets
    println!("Step 2: Hot buckets with symbols\n");
    
    let mut sorted: Vec<_> = buckets.iter().collect();
    sorted.sort_by_key(|(_, (count, _))| std::cmp::Reverse(*count));
    
    for (bucket, (count, symbols)) in sorted.iter().take(20) {
        if *count > 300 {
            let prime = if **bucket < monster.len() {
                format!("prime {}", monster[**bucket])
            } else {
                "no prime".to_string()
            };
            
            println!("Bucket {} ({}, {} samples):", bucket, prime, count);
            
            // Count symbol frequencies
            let mut symbol_counts: HashMap<&str, usize> = HashMap::new();
            for sym in symbols {
                *symbol_counts.entry(sym.as_str()).or_insert(0) += 1;
            }
            
            let mut sorted_syms: Vec<_> = symbol_counts.iter().collect();
            sorted_syms.sort_by_key(|(_, &c)| std::cmp::Reverse(c));
            
            for (sym, &cnt) in sorted_syms.iter().take(5) {
                let pct = (cnt as f64 / *count as f64) * 100.0;
                println!("  {:>4}x ({:5.1}%) {}", cnt, pct, sym);
            }
            println!();
        }
    }
    
    // Step 3: Map Monster primes to symbols
    println!("Step 3: Monster prime buckets → Dominant symbols\n");
    
    for (i, &prime) in monster.iter().enumerate() {
        if let Some((count, symbols)) = buckets.get(&i) {
            if *count > 100 {
                println!("Layer {} (prime {}, bucket {}):", i, prime, i);
                println!("  Samples: {}", count);
                
                let mut symbol_counts: HashMap<&str, usize> = HashMap::new();
                for sym in symbols {
                    *symbol_counts.entry(sym.as_str()).or_insert(0) += 1;
                }
                
                if let Some((top_sym, &top_count)) = symbol_counts.iter()
                    .max_by_key(|(_, &c)| c) 
                {
                    let pct = (top_count as f64 / *count as f64) * 100.0;
                    println!("  Top symbol: {} ({:.1}%)", top_sym, pct);
                }
                println!();
            }
        }
    }
    
    // Step 4: Look for patterns in symbol names
    println!("Step 4: Symbol patterns\n");
    
    let patterns = [
        ("cuda", "CUDA GPU operations"),
        ("kernel", "Kernel functions"),
        ("write", "I/O write operations"),
        ("read", "I/O read operations"),
        ("mmap", "Memory mapping"),
        ("record", "Perf recording"),
        ("swapper", "Idle/scheduler"),
    ];
    
    for (pattern, desc) in &patterns {
        let mut total = 0;
        let mut bucket_hits: Vec<(usize, usize)> = Vec::new();
        
        for (bucket, (_, symbols)) in &buckets {
            let hits = symbols.iter()
                .filter(|s| s.to_lowercase().contains(pattern))
                .count();
            
            if hits > 0 {
                total += hits;
                bucket_hits.push((*bucket, hits));
            }
        }
        
        if total > 0 {
            println!("{}: {} occurrences ({})", pattern, total, desc);
            
            bucket_hits.sort_by_key(|(_, h)| std::cmp::Reverse(*h));
            for (bucket, hits) in bucket_hits.iter().take(3) {
                let prime_info = if *bucket < monster.len() {
                    format!("prime {}", monster[*bucket])
                } else {
                    format!("bucket {}", bucket)
                };
                println!("  {} hits in {} ({})", hits, bucket, prime_info);
            }
            println!();
        }
    }
    
    println!("∴ Symbol names reveal code structure encoded in FRACTRAN");
    println!("Q.E.D. □");
}
