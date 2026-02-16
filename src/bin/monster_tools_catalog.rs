// Quick Monster Tools Catalog - No compilation, just list

use std::fs;
use std::io::Write;

fn main() -> Result<(), Box<dyn std::error::Error>> {
    println!("📊 Monster Tools Catalog");
    println!("━━━━━━━━━━━━━━━━━━━━━━━");
    
    let tools = discover_tools()?;
    println!("🔍 Found {} tools\n", tools.len());
    
    generate_catalog(&tools)?;
    generate_html(&tools)?;
    
    println!("✅ Generated:");
    println!("   monster_tools_catalog.txt");
    println!("   monster_tools_catalog.html");
    
    Ok(())
}

#[derive(Debug)]
struct Tool {
    name: String,
    category: String,
    lines: usize,
}

fn discover_tools() -> Result<Vec<Tool>, Box<dyn std::error::Error>> {
    let mut tools = Vec::new();
    
    for entry in fs::read_dir("src/bin")? {
        let entry = entry?;
        let path = entry.path();
        
        if path.extension().map_or(false, |ext| ext == "rs") {
            if let Some(name) = path.file_stem() {
                let name_str = name.to_string_lossy().to_string();
                let category = categorize(&name_str);
                let lines = count_lines(&path)?;
                
                tools.push(Tool { name: name_str, category, lines });
            }
        }
    }
    
    tools.sort_by(|a, b| a.name.cmp(&b.name));
    Ok(tools)
}

fn categorize(name: &str) -> String {
    if name.contains("search") || name.contains("sweep") { "Search".into() }
    else if name.contains("shard") { "Sharding".into() }
    else if name.contains("zk") { "ZK".into() }
    else if name.contains("galois") || name.contains("lattice") { "Galois".into() }
    else if name.contains("monster") { "Monster".into() }
    else if name.contains("gpu") || name.contains("cuda") { "GPU".into() }
    else if name.contains("neural") || name.contains("train") { "Neural".into() }
    else { "Other".into() }
}

fn count_lines(path: &std::path::Path) -> Result<usize, Box<dyn std::error::Error>> {
    Ok(fs::read_to_string(path)?.lines().count())
}

fn generate_catalog(tools: &[Tool]) -> Result<(), Box<dyn std::error::Error>> {
    let mut out = fs::File::create("monster_tools_catalog.txt")?;
    
    writeln!(out, "Monster Tools Catalog")?;
    writeln!(out, "====================")?;
    writeln!(out, "Total: {} tools\n", tools.len())?;
    
    let mut by_cat = std::collections::HashMap::new();
    for tool in tools {
        by_cat.entry(&tool.category).or_insert_with(Vec::new).push(tool);
    }
    
    for (cat, tools) in &by_cat {
        writeln!(out, "\n{} ({} tools):", cat, tools.len())?;
        writeln!(out, "{}", "-".repeat(40))?;
        for tool in tools {
            writeln!(out, "  {:40} {:>6} lines", tool.name, tool.lines)?;
        }
    }
    
    Ok(())
}

fn generate_html(tools: &[Tool]) -> Result<(), Box<dyn std::error::Error>> {
    let mut out = fs::File::create("monster_tools_catalog.html")?;
    
    writeln!(out, "<!DOCTYPE html><html><head>")?;
    writeln!(out, "<title>Monster Tools</title>")?;
    writeln!(out, "<style>")?;
    writeln!(out, "body{{font-family:monospace;background:#1a1a1a;color:#00ff00;padding:20px}}")?;
    writeln!(out, "h1{{color:#00ff00}}")?;
    writeln!(out, "table{{border-collapse:collapse;width:100%;margin:20px 0}}")?;
    writeln!(out, "th,td{{border:1px solid #00ff00;padding:8px;text-align:left}}")?;
    writeln!(out, "th{{background:#003300}}")?;
    writeln!(out, "</style></head><body>")?;
    
    writeln!(out, "<h1>🏛️ Monster Tools Catalog</h1>")?;
    writeln!(out, "<p>Total: {} tools</p>", tools.len())?;
    
    writeln!(out, "<table>")?;
    writeln!(out, "<tr><th>#</th><th>Name</th><th>Category</th><th>Lines</th></tr>")?;
    
    for (i, tool) in tools.iter().enumerate() {
        writeln!(out, "<tr><td>{}</td><td>{}</td><td>{}</td><td>{}</td></tr>",
                 i+1, tool.name, tool.category, tool.lines)?;
    }
    
    writeln!(out, "</table></body></html>")?;
    Ok(())
}
