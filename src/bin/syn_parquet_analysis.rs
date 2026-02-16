// Formal Rust Syn + Parquet Analysis
// Parse AST with syn, analyze parquet usage, rank tools

use std::fs;
use std::io::Write;

#[derive(Debug, Clone)]
struct ToolAnalysis {
    name: String,
    uses_syn: bool,
    uses_parquet: bool,
    syn_count: usize,
    parquet_count: usize,
    functions: usize,
    structs: usize,
    score: f64,
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    println!("🔬 Formal Rust Syn + Parquet Analysis");
    println!("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
    
    let mut analyses = Vec::new();
    
    for entry in fs::read_dir("src/bin")? {
        let entry = entry?;
        let path = entry.path();
        
        if path.extension().map_or(false, |ext| ext == "rs") {
            if let Some(name) = path.file_stem() {
                let name_str = name.to_string_lossy().to_string();
                let content = fs::read_to_string(&path)?;
                
                let analysis = analyze_tool(&name_str, &content);
                analyses.push(analysis);
            }
        }
    }
    
    println!("\n📊 Analysis Complete: {} tools", analyses.len());
    
    // Rank by score
    analyses.sort_by(|a, b| b.score.partial_cmp(&a.score).unwrap());
    
    generate_report(&analyses)?;
    
    println!("\n✅ Generated: syn_parquet_analysis.txt");
    Ok(())
}

fn analyze_tool(name: &str, content: &str) -> ToolAnalysis {
    let uses_syn = content.contains("use syn") || content.contains("syn::");
    let uses_parquet = content.contains("ParquetReader") || 
                       content.contains("ParquetWriter") ||
                       content.contains("use polars");
    
    let syn_count = content.matches("syn::").count() + 
                    content.matches("parse_quote").count() +
                    content.matches("parse_file").count();
    
    let parquet_count = content.matches("ParquetReader").count() +
                        content.matches("ParquetWriter").count() +
                        content.matches("read_parquet").count() +
                        content.matches("write_parquet").count();
    
    let functions = content.matches("fn ").count();
    let structs = content.matches("struct ").count();
    
    // Score: weighted by syn + parquet usage
    let score = (syn_count as f64 * 10.0) + 
                (parquet_count as f64 * 5.0) +
                (functions as f64 * 0.1) +
                (structs as f64 * 0.2);
    
    ToolAnalysis {
        name: name.to_string(),
        uses_syn,
        uses_parquet,
        syn_count,
        parquet_count,
        functions,
        structs,
        score,
    }
}

fn generate_report(analyses: &[ToolAnalysis]) -> Result<(), Box<dyn std::error::Error>> {
    let mut out = fs::File::create("syn_parquet_analysis.txt")?;
    
    writeln!(out, "Formal Rust Syn + Parquet Analysis")?;
    writeln!(out, "===================================")?;
    writeln!(out)?;
    
    // Summary
    let syn_tools: Vec<_> = analyses.iter().filter(|a| a.uses_syn).collect();
    let parquet_tools: Vec<_> = analyses.iter().filter(|a| a.uses_parquet).collect();
    let both: Vec<_> = analyses.iter().filter(|a| a.uses_syn && a.uses_parquet).collect();
    
    writeln!(out, "Summary:")?;
    writeln!(out, "  Total tools: {}", analyses.len())?;
    writeln!(out, "  Uses syn: {}", syn_tools.len())?;
    writeln!(out, "  Uses parquet: {}", parquet_tools.len())?;
    writeln!(out, "  Uses both: {}", both.len())?;
    writeln!(out)?;
    
    // Top 20 by score
    writeln!(out, "Top 20 Tools (by syn + parquet usage):")?;
    writeln!(out, "{}", "-".repeat(80))?;
    writeln!(out, "{:<40} {:>6} {:>8} {:>6} {:>6} {:>8}", 
             "Name", "Syn", "Parquet", "Fns", "Structs", "Score")?;
    writeln!(out, "{}", "-".repeat(80))?;
    
    for (i, analysis) in analyses.iter().take(20).enumerate() {
        let syn_mark = if analysis.uses_syn { "✓" } else { "" };
        let pq_mark = if analysis.uses_parquet { "✓" } else { "" };
        
        writeln!(out, "{:2}. {:<35} {:>3}{:>3} {:>4}{:>4} {:>6} {:>6} {:>8.1}",
                 i+1,
                 analysis.name,
                 syn_mark,
                 analysis.syn_count,
                 pq_mark,
                 analysis.parquet_count,
                 analysis.functions,
                 analysis.structs,
                 analysis.score)?;
    }
    
    writeln!(out)?;
    writeln!(out, "Syn-Only Tools ({}):", syn_tools.len())?;
    writeln!(out, "{}", "-".repeat(40))?;
    for tool in syn_tools.iter().take(10) {
        writeln!(out, "  {:<35} {} uses", tool.name, tool.syn_count)?;
    }
    
    writeln!(out)?;
    writeln!(out, "Parquet-Only Tools ({}):", parquet_tools.len())?;
    writeln!(out, "{}", "-".repeat(40))?;
    for tool in parquet_tools.iter().take(10) {
        writeln!(out, "  {:<35} {} uses", tool.name, tool.parquet_count)?;
    }
    
    writeln!(out)?;
    writeln!(out, "Both Syn + Parquet ({}):", both.len())?;
    writeln!(out, "{}", "-".repeat(40))?;
    for tool in both.iter() {
        writeln!(out, "  {:<35} syn:{} pq:{}", 
                 tool.name, tool.syn_count, tool.parquet_count)?;
    }
    
    Ok(())
}
