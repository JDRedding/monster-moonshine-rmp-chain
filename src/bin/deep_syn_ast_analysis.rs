// Deep AST Analysis - Parse all tools (without syn for now)
// Extract: functions, structs, traits, impls, macros

use std::fs;
use std::io::Write;

#[derive(Debug, Default)]
struct AstMetrics {
    name: String,
    functions: usize,
    structs: usize,
    enums: usize,
    traits: usize,
    impls: usize,
    macros: usize,
    uses_parquet: bool,
    parquet_ops: usize,
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    println!("🔬 Deep Syn AST Analysis");
    println!("━━━━━━━━━━━━━━━━━━━━━━━━");
    
    let mut metrics = Vec::new();
    
    for entry in fs::read_dir("src/bin")? {
        let entry = entry?;
        let path = entry.path();
        
        if path.extension().map_or(false, |ext| ext == "rs") {
            if let Some(name) = path.file_stem() {
                let name_str = name.to_string_lossy().to_string();
                let content = fs::read_to_string(&path)?;
                let m = analyze_content(&name_str, &content);
                metrics.push(m);
                println!("  ✅ {}", name_str);
            }
        }
    }
    
    println!("\n📊 Parsed {} tools", metrics.len());
    
    // Rank by complexity
    metrics.sort_by_key(|m| std::cmp::Reverse(m.functions + m.structs + m.impls));
    
    generate_ast_report(&metrics)?;
    
    println!("✅ Generated: ast_analysis.txt");
    Ok(())
}

fn analyze_content(name: &str, content: &str) -> AstMetrics {
    let mut metrics = AstMetrics {
        name: name.to_string(),
        uses_parquet: content.contains("ParquetReader") || content.contains("polars"),
        parquet_ops: content.matches("ParquetReader").count() + 
                     content.matches("ParquetWriter").count(),
        ..Default::default()
    };
    
    // Count items by pattern matching
    for line in content.lines() {
        let trimmed = line.trim();
        if trimmed.starts_with("fn ") { metrics.functions += 1; }
        if trimmed.starts_with("struct ") { metrics.structs += 1; }
        if trimmed.starts_with("enum ") { metrics.enums += 1; }
        if trimmed.starts_with("trait ") { metrics.traits += 1; }
        if trimmed.starts_with("impl ") { metrics.impls += 1; }
        if trimmed.starts_with("macro_rules!") { metrics.macros += 1; }
    }
    
    metrics
}

fn generate_ast_report(metrics: &[AstMetrics]) -> Result<(), Box<dyn std::error::Error>> {
    let mut out = fs::File::create("ast_analysis.txt")?;
    
    writeln!(out, "Deep Syn AST Analysis")?;
    writeln!(out, "=====================")?;
    writeln!(out)?;
    
    writeln!(out, "Top 30 Most Complex Tools:")?;
    writeln!(out, "{}", "-".repeat(100))?;
    writeln!(out, "{:<40} {:>6} {:>8} {:>6} {:>7} {:>6} {:>7} {:>10}", 
             "Name", "Fns", "Structs", "Enums", "Traits", "Impls", "Macros", "Parquet")?;
    writeln!(out, "{}", "-".repeat(100))?;
    
    for (i, m) in metrics.iter().take(30).enumerate() {
        let pq = if m.uses_parquet { format!("✓({})", m.parquet_ops) } else { "".to_string() };
        writeln!(out, "{:2}. {:<37} {:>6} {:>8} {:>6} {:>7} {:>6} {:>7} {:>10}",
                 i+1, m.name, m.functions, m.structs, m.enums, 
                 m.traits, m.impls, m.macros, pq)?;
    }
    
    writeln!(out)?;
    writeln!(out, "Parquet Tools (ranked by usage):")?;
    writeln!(out, "{}", "-".repeat(60))?;
    
    let mut parquet_tools: Vec<_> = metrics.iter()
        .filter(|m| m.uses_parquet)
        .collect();
    parquet_tools.sort_by_key(|m| std::cmp::Reverse(m.parquet_ops));
    
    for (i, m) in parquet_tools.iter().enumerate() {
        writeln!(out, "{:2}. {:<40} {} operations", 
                 i+1, m.name, m.parquet_ops)?;
    }
    
    Ok(())
}
