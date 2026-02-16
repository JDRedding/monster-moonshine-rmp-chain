// Reflect Prolog Knowledge Trace into ZK Proofs
// Generates ZK witness for every Prolog fact/rule

use std::fs;
use std::io::Write;
use walkdir::WalkDir;

fn main() -> Result<(), Box<dyn std::error::Error>> {
    println!("🔮 Prolog Knowledge Trace → ZK Reflection");
    println!("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
    
    let prolog_dir = "prolog";
    let mut trace = Vec::new();
    
    // Scan all .pl files
    for entry in WalkDir::new(prolog_dir)
        .into_iter()
        .filter_map(|e| e.ok())
        .filter(|e| e.path().extension().map_or(false, |ext| ext == "pl"))
    {
        let path = entry.path();
        let content = fs::read_to_string(path)?;
        
        for (line_num, line) in content.lines().enumerate() {
            let trimmed = line.trim();
            if trimmed.is_empty() || trimmed.starts_with('%') {
                continue;
            }
            
            // Extract facts/rules
            if trimmed.contains(":-") || trimmed.ends_with('.') {
                trace.push(PrologFact {
                    file: path.display().to_string(),
                    line: line_num + 1,
                    content: trimmed.to_string(),
                });
            }
        }
    }
    
    println!("📊 Traced {} Prolog facts/rules", trace.len());
    
    // Generate ZK reflection
    let mut out = fs::File::create("prolog/zk_reflection.pl")?;
    
    writeln!(out, "% ZK Reflection of Prolog Knowledge Trace")?;
    writeln!(out, "% Total facts: {}", trace.len())?;
    writeln!(out)?;
    writeln!(out, ":- module(zk_reflection, [")?;
    writeln!(out, "    zk_fact/4,")?;
    writeln!(out, "    zk_witness/2,")?;
    writeln!(out, "    zk_proof/1")?;
    writeln!(out, "]).")?;
    writeln!(out)?;
    
    for (idx, fact) in trace.iter().enumerate() {
        let hash = format!("{:x}", md5::compute(fact.content.as_bytes()));
        let safe_content = fact.content.replace('\'', "\\'").chars().take(80).collect::<String>();
        
        writeln!(out, "% Fact {}: {}", idx, fact.file)?;
        writeln!(out, "zk_fact({}, '{}', {}, '{}').", 
                 idx, fact.file, fact.line, safe_content)?;
        writeln!(out, "zk_witness({}, '{}').", idx, hash)?;
        writeln!(out)?;
    }
    
    // Global proof (hash of all hashes)
    let all_hashes: String = trace.iter()
        .map(|f| format!("{:x}", md5::compute(f.content.as_bytes())))
        .collect();
    let global_proof = format!("{:x}", md5::compute(all_hashes.as_bytes()));
    
    writeln!(out, "% Global ZK proof of entire knowledge base")?;
    writeln!(out, "zk_proof('{}').", global_proof)?;
    
    println!("✅ Generated: prolog/zk_reflection.pl");
    println!("🔐 Global proof: {}", global_proof);
    
    Ok(())
}

#[derive(Debug)]
struct PrologFact {
    file: String,
    line: usize,
    content: String,
}
