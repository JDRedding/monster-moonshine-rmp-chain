// Lift All Prolog Code into Complexity Lattice
// Maps every predicate to its complexity level in the Galois Ziggurat

use std::collections::HashMap;
use std::fs;
use std::io::Write;
use walkdir::WalkDir;

const MONSTER_PRIMES: [u64; 15] = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71];

fn main() -> Result<(), Box<dyn std::error::Error>> {
    println!("🏛️  Lift Prolog → Complexity Lattice");
    println!("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
    
    let mut predicates = Vec::new();
    
    // Scan all Prolog files
    for entry in WalkDir::new("prolog")
        .into_iter()
        .filter_map(|e| e.ok())
        .filter(|e| e.path().extension().map_or(false, |ext| ext == "pl"))
    {
        let content = fs::read_to_string(entry.path())?;
        
        for (line_num, line) in content.lines().enumerate() {
            if let Some(pred) = extract_predicate(line) {
                let complexity = compute_complexity(&pred);
                let level = complexity % 71;
                let prime = MONSTER_PRIMES[(level % 15) as usize];
                
                predicates.push(PredicateLift {
                    name: pred,
                    file: entry.path().display().to_string(),
                    line: line_num + 1,
                    complexity,
                    level,
                    prime,
                });
            }
        }
    }
    
    println!("📊 Lifted {} predicates", predicates.len());
    
    // Group by complexity level
    let mut lattice: HashMap<u64, Vec<PredicateLift>> = HashMap::new();
    for pred in &predicates {
        lattice.entry(pred.level).or_insert_with(Vec::new).push(pred.clone());
    }
    
    println!("🏗️  Lattice has {} levels", lattice.len());
    
    // Generate lattice structure
    let mut out = fs::File::create("prolog/complexity_lattice_lift.pl")?;
    
    writeln!(out, "% Complexity Lattice Lift")?;
    writeln!(out, "% All Prolog predicates mapped to Galois Ziggurat levels")?;
    writeln!(out)?;
    writeln!(out, ":- module(complexity_lattice_lift, [")?;
    writeln!(out, "    predicate_at_level/6,")?;
    writeln!(out, "    level_prime/2,")?;
    writeln!(out, "    level_count/2,")?;
    writeln!(out, "    galois_level/1")?;
    writeln!(out, "]).")?;
    writeln!(out)?;
    
    // Write predicates by level
    for level in 0..=70 {
        if let Some(preds) = lattice.get(&level) {
            let prime = MONSTER_PRIMES[(level % 15) as usize];
            writeln!(out, "% Level {} (prime {}): {} predicates", level, prime, preds.len())?;
            writeln!(out, "level_prime({}, {}).", level, prime)?;
            writeln!(out, "level_count({}, {}).", level, preds.len())?;
            writeln!(out, "galois_level({}).", level)?;
            writeln!(out)?;
            
            for pred in preds {
                writeln!(out, "predicate_at_level('{}', '{}', {}, {}, {}, {}).",
                         pred.name, pred.file, pred.line, pred.complexity, pred.level, pred.prime)?;
            }
            writeln!(out)?;
        }
    }
    
    // Generate summary
    writeln!(out, "% Summary")?;
    writeln!(out, "% Total predicates: {}", predicates.len())?;
    writeln!(out, "% Lattice levels: {}", lattice.len())?;
    
    println!("✅ Generated: prolog/complexity_lattice_lift.pl");
    
    // Generate visualization
    generate_lattice_viz(&lattice)?;
    
    Ok(())
}

#[derive(Debug, Clone)]
struct PredicateLift {
    name: String,
    file: String,
    line: usize,
    complexity: u64,
    level: u64,
    prime: u64,
}

fn extract_predicate(line: &str) -> Option<String> {
    let trimmed = line.trim();
    
    // Skip comments and empty lines
    if trimmed.is_empty() || trimmed.starts_with('%') {
        return None;
    }
    
    // Extract predicate name from fact/rule
    if let Some(pos) = trimmed.find('(') {
        let name = trimmed[..pos].trim();
        if !name.is_empty() && name.chars().all(|c| c.is_alphanumeric() || c == '_') {
            return Some(name.to_string());
        }
    }
    
    None
}

fn compute_complexity(pred: &str) -> u64 {
    // Simple complexity: length + char values
    let mut complexity = pred.len() as u64;
    for c in pred.chars() {
        complexity += c as u64;
    }
    complexity
}

fn generate_lattice_viz(lattice: &HashMap<u64, Vec<PredicateLift>>) -> Result<(), Box<dyn std::error::Error>> {
    let mut out = fs::File::create("prolog/lattice_visualization.txt")?;
    
    writeln!(out, "Complexity Lattice Visualization")?;
    writeln!(out, "=================================")?;
    writeln!(out)?;
    
    for level in 0..=70 {
        if let Some(preds) = lattice.get(&level) {
            let prime = MONSTER_PRIMES[(level % 15) as usize];
            writeln!(out, "Level {:2} (prime {:2}): {:4} predicates", level, prime, preds.len())?;
            
            // Show top 3 predicates
            for pred in preds.iter().take(3) {
                writeln!(out, "  - {}", pred.name)?;
            }
            if preds.len() > 3 {
                writeln!(out, "  ... and {} more", preds.len() - 3)?;
            }
            writeln!(out)?;
        }
    }
    
    println!("✅ Generated: prolog/lattice_visualization.txt");
    Ok(())
}
