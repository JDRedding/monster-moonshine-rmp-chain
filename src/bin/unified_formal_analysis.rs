// Unified Formal Analysis: AST + Parquet + Monster Factorization
// Rank all 110 tools by complexity, parquet usage, and Monster prime alignment

use std::fs;
use std::io::Write;

const MONSTER_PRIMES: [u64; 15] = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71];

#[derive(Debug, Default, Clone)]
struct UnifiedMetrics {
    name: String,
    functions: usize,
    structs: usize,
    enums: usize,
    impls: usize,
    uses_parquet: bool,
    parquet_ops: usize,
    monster_alignment: f64,
    complexity_score: f64,
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    println!("🔬 Unified Formal Analysis");
    println!("━━━━━━━━━━━━━━━━━━━━━━━━━━");
    
    let mut all_metrics = Vec::new();
    
    for entry in fs::read_dir("src/bin")? {
        let entry = entry?;
        let path = entry.path();
        
        if path.extension().map_or(false, |ext| ext == "rs") {
            if let Some(name) = path.file_stem() {
                let name_str = name.to_string_lossy().to_string();
                let content = fs::read_to_string(&path)?;
                let m = analyze_unified(&name_str, &content);
                all_metrics.push(m);
            }
        }
    }
    
    println!("📊 Analyzed {} tools", all_metrics.len());
    
    // Rank by complexity score
    all_metrics.sort_by(|a, b| b.complexity_score.partial_cmp(&a.complexity_score).unwrap());
    
    generate_unified_report(&all_metrics)?;
    
    println!("✅ Generated: unified_analysis.txt");
    println!("✅ Generated: unified_analysis.html");
    Ok(())
}

fn analyze_unified(name: &str, content: &str) -> UnifiedMetrics {
    let mut m = UnifiedMetrics {
        name: name.to_string(),
        uses_parquet: content.contains("ParquetReader") || content.contains("polars"),
        parquet_ops: content.matches("ParquetReader").count() + 
                     content.matches("ParquetWriter").count() +
                     content.matches("read_parquet").count(),
        ..Default::default()
    };
    
    // Count AST elements
    for line in content.lines() {
        let t = line.trim();
        if t.starts_with("fn ") { m.functions += 1; }
        if t.starts_with("struct ") { m.structs += 1; }
        if t.starts_with("enum ") { m.enums += 1; }
        if t.starts_with("impl ") { m.impls += 1; }
    }
    
    // Monster alignment: check if name contains Monster primes
    let mut alignment = 0.0;
    for &prime in &MONSTER_PRIMES {
        if name.contains(&prime.to_string()) {
            alignment += 1.0;
        }
    }
    // Check for Monster keywords
    if name.contains("monster") { alignment += 2.0; }
    if name.contains("zk") || name.contains("71") { alignment += 1.0; }
    if name.contains("galois") || name.contains("hecke") { alignment += 1.0; }
    
    m.monster_alignment = alignment;
    
    // Complexity score: weighted sum
    m.complexity_score = 
        (m.functions as f64 * 1.0) +
        (m.structs as f64 * 2.0) +
        (m.enums as f64 * 1.5) +
        (m.impls as f64 * 3.0) +
        (m.parquet_ops as f64 * 5.0) +
        (m.monster_alignment * 10.0);
    
    m
}

fn generate_unified_report(metrics: &[UnifiedMetrics]) -> Result<(), Box<dyn std::error::Error>> {
    let mut txt = fs::File::create("unified_analysis.txt")?;
    let mut html = fs::File::create("unified_analysis.html")?;
    
    // TXT Report
    writeln!(txt, "Unified Formal Analysis: AST + Parquet + Monster")?;
    writeln!(txt, "==================================================")?;
    writeln!(txt)?;
    
    writeln!(txt, "Top 40 Tools (by complexity score):")?;
    writeln!(txt, "{}", "-".repeat(120))?;
    writeln!(txt, "{:<40} {:>5} {:>7} {:>5} {:>5} {:>8} {:>10} {:>8}", 
             "Name", "Fns", "Structs", "Enums", "Impls", "Parquet", "Monster", "Score")?;
    writeln!(txt, "{}", "-".repeat(120))?;
    
    for (i, m) in metrics.iter().take(40).enumerate() {
        let pq = if m.uses_parquet { format!("✓({})", m.parquet_ops) } else { "".to_string() };
        writeln!(txt, "{:2}. {:<37} {:>5} {:>7} {:>5} {:>5} {:>8} {:>10.1} {:>8.1}",
                 i+1, m.name, m.functions, m.structs, m.enums, m.impls, 
                 pq, m.monster_alignment, m.complexity_score)?;
    }
    
    // HTML Report
    writeln!(html, "<!DOCTYPE html><html><head>")?;
    writeln!(html, "<title>Unified Analysis</title>")?;
    writeln!(html, "<style>")?;
    writeln!(html, "body {{ font-family: monospace; background: #0a0a0a; color: #0f0; padding: 20px; }}")?;
    writeln!(html, "table {{ border-collapse: collapse; width: 100%; }}")?;
    writeln!(html, "th, td {{ border: 1px solid #0f0; padding: 8px; text-align: left; }}")?;
    writeln!(html, "th {{ background: #1a1a1a; }}")?;
    writeln!(html, "tr:hover {{ background: #1a1a1a; }}")?;
    writeln!(html, ".parquet {{ color: #ff0; }}")?;
    writeln!(html, ".monster {{ color: #f0f; }}")?;
    writeln!(html, "</style></head><body>")?;
    
    writeln!(html, "<h1>Unified Formal Analysis</h1>")?;
    writeln!(html, "<p>Total tools: {}</p>", metrics.len())?;
    
    writeln!(html, "<table>")?;
    writeln!(html, "<tr><th>#</th><th>Name</th><th>Fns</th><th>Structs</th><th>Enums</th><th>Impls</th><th>Parquet</th><th>Monster</th><th>Score</th></tr>")?;
    
    for (i, m) in metrics.iter().take(40).enumerate() {
        let pq_class = if m.uses_parquet { " class=\"parquet\"" } else { "" };
        let monster_class = if m.monster_alignment > 0.0 { " class=\"monster\"" } else { "" };
        
        writeln!(html, "<tr><td>{}</td><td{}>{}</td><td>{}</td><td>{}</td><td>{}</td><td>{}</td><td{}>{}</td><td{}>{:.1}</td><td>{:.1}</td></tr>",
                 i+1, monster_class, m.name, m.functions, m.structs, m.enums, m.impls,
                 pq_class, m.parquet_ops, monster_class, m.monster_alignment, m.complexity_score)?;
    }
    
    writeln!(html, "</table></body></html>")?;
    
    Ok(())
}
