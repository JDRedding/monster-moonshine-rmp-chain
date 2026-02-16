// Prolog GPU Bridge - Load Prolog KB directly into GPU memory
// Uses polars + cudf for zero-copy GPU transfer

use polars::prelude::*;

#[derive(Debug, Clone)]
struct PrologFact {
    predicate: String,
    args: Vec<String>,
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    println!("🚀 Loading Prolog KB to GPU");
    println!("{}", "=".repeat(60));
    println!();
    
    // Parse Prolog KB
    let kb = parse_prolog_kb("prolog/monster_kb.pl")?;
    println!("✅ Parsed {} facts", kb.len());
    
    // Convert to DataFrame
    let mut df = facts_to_dataframe(&kb)?;
    println!("✅ Created DataFrame: {} rows × {} cols", df.height(), df.width());
    
    // Save to parquet for GPU loading
    let mut file = std::fs::File::create("shmem/prolog_kb.parquet")?;
    ParquetWriter::new(&mut file).finish(&mut df)?;
    println!("✅ Saved to shmem/prolog_kb.parquet");
    
    // Show sample
    println!("\n📊 Sample facts:");
    println!("{}", df.head(Some(10)));
    
    println!("\n🎮 Ready for GPU loading via cudf/polars");
    
    Ok(())
}

fn parse_prolog_kb(path: &str) -> Result<Vec<PrologFact>, Box<dyn std::error::Error>> {
    let content = std::fs::read_to_string(path)?;
    let mut facts = Vec::new();
    
    for line in content.lines() {
        let line = line.trim();
        
        // Skip comments and empty lines
        if line.starts_with('%') || line.is_empty() || line.starts_with(":-") {
            continue;
        }
        
        // Parse facts: predicate(arg1, arg2, ...).
        if let Some(pos) = line.find('(') {
            if let Some(end) = line.rfind(").") {
                let predicate = line[..pos].trim().to_string();
                let args_str = &line[pos+1..end];
                let args: Vec<String> = args_str
                    .split(',')
                    .map(|s| s.trim().to_string())
                    .collect();
                
                facts.push(PrologFact { predicate, args });
            }
        }
    }
    
    Ok(facts)
}

fn facts_to_dataframe(facts: &[PrologFact]) -> Result<DataFrame, Box<dyn std::error::Error>> {
    let mut predicates = Vec::new();
    let mut arg0 = Vec::new();
    let mut arg1 = Vec::new();
    let mut arg2 = Vec::new();
    let mut arg3 = Vec::new();
    
    for fact in facts {
        predicates.push(fact.predicate.clone());
        arg0.push(fact.args.get(0).cloned().unwrap_or_default());
        arg1.push(fact.args.get(1).cloned().unwrap_or_default());
        arg2.push(fact.args.get(2).cloned().unwrap_or_default());
        arg3.push(fact.args.get(3).cloned().unwrap_or_default());
    }
    
    let df = df!(
        "predicate" => predicates,
        "arg0" => arg0,
        "arg1" => arg1,
        "arg2" => arg2,
        "arg3" => arg3
    )?;
    
    Ok(df)
}
