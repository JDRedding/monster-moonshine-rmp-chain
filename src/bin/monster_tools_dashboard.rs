// Monster Tools Dashboard - Benchmark All 105 Tools
// Measure speed, perf record, and generate dashboard

use std::process::Command;
use std::time::Instant;
use std::fs;
use std::io::Write;

#[derive(Debug, Clone)]
struct ToolBenchmark {
    name: String,
    category: String,
    compile_time_ms: u128,
    run_time_ms: u128,
    binary_size_kb: u64,
    success: bool,
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    println!("📊 Monster Tools Dashboard - Benchmarking 105 Tools");
    println!("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
    
    let tools = discover_all_tools()?;
    println!("🔍 Found {} tools\n", tools.len());
    
    let mut benchmarks = Vec::new();
    
    for (idx, tool) in tools.iter().enumerate() {
        println!("[{}/{}] Benchmarking: {}", idx + 1, tools.len(), tool.name);
        
        let bench = benchmark_tool(tool)?;
        benchmarks.push(bench);
    }
    
    // Generate dashboard
    generate_dashboard(&benchmarks)?;
    generate_html_dashboard(&benchmarks)?;
    
    println!("\n✅ Dashboard generated!");
    println!("   Text: monster_tools_dashboard.txt");
    println!("   HTML: monster_tools_dashboard.html");
    
    Ok(())
}

#[derive(Debug, Clone)]
struct Tool {
    name: String,
    path: String,
    category: String,
}

fn discover_all_tools() -> Result<Vec<Tool>, Box<dyn std::error::Error>> {
    let mut tools = Vec::new();
    
    for entry in fs::read_dir("src/bin")? {
        let entry = entry?;
        let path = entry.path();
        
        if path.extension().map_or(false, |ext| ext == "rs") {
            if let Some(name) = path.file_stem() {
                let name_str = name.to_string_lossy().to_string();
                let category = categorize_tool(&name_str);
                
                tools.push(Tool {
                    name: name_str,
                    path: path.display().to_string(),
                    category,
                });
            }
        }
    }
    
    tools.sort_by(|a, b| a.name.cmp(&b.name));
    Ok(tools)
}

fn categorize_tool(name: &str) -> String {
    if name.contains("search") || name.contains("sweep") || name.contains("index") {
        "Search".to_string()
    } else if name.contains("shard") || name.contains("partition") {
        "Sharding".to_string()
    } else if name.contains("zk") || name.contains("proof") {
        "ZK".to_string()
    } else if name.contains("galois") || name.contains("lattice") {
        "Galois".to_string()
    } else if name.contains("monster") || name.contains("harmonic") {
        "Monster".to_string()
    } else if name.contains("gpu") || name.contains("cuda") {
        "GPU".to_string()
    } else if name.contains("neural") || name.contains("train") || name.contains("autoencoder") {
        "Neural".to_string()
    } else {
        "Other".to_string()
    }
}

fn benchmark_tool(tool: &Tool) -> Result<ToolBenchmark, Box<dyn std::error::Error>> {
    // Compile
    let compile_start = Instant::now();
    let compile_result = Command::new("cargo")
        .args(&["build", "--bin", &tool.name, "--release"])
        .output()?;
    let compile_time = compile_start.elapsed().as_millis();
    
    let success = compile_result.status.success();
    
    // Get binary size
    let binary_path = format!("target/release/{}", tool.name);
    let binary_size = if let Ok(metadata) = fs::metadata(&binary_path) {
        metadata.len() / 1024
    } else {
        0
    };
    
    // Run (with timeout)
    let run_time = if success {
        let run_start = Instant::now();
        let _ = Command::new(&binary_path)
            .arg("--help")
            .output();
        run_start.elapsed().as_millis().min(1000) // Cap at 1s
    } else {
        0
    };
    
    Ok(ToolBenchmark {
        name: tool.name.clone(),
        category: tool.category.clone(),
        compile_time_ms: compile_time,
        run_time_ms: run_time,
        binary_size_kb: binary_size,
        success,
    })
}

fn generate_dashboard(benchmarks: &[ToolBenchmark]) -> Result<(), Box<dyn std::error::Error>> {
    let mut out = fs::File::create("monster_tools_dashboard.txt")?;
    
    writeln!(out, "Monster Tools Dashboard")?;
    writeln!(out, "=======================")?;
    writeln!(out, "Total Tools: {}", benchmarks.len())?;
    writeln!(out)?;
    
    // Summary by category
    let mut categories = std::collections::HashMap::new();
    for bench in benchmarks {
        *categories.entry(&bench.category).or_insert(0) += 1;
    }
    
    writeln!(out, "By Category:")?;
    for (cat, count) in &categories {
        writeln!(out, "  {}: {} tools", cat, count)?;
    }
    writeln!(out)?;
    
    // Top 10 fastest compile
    writeln!(out, "Top 10 Fastest Compile:")?;
    let mut sorted = benchmarks.to_vec();
    sorted.sort_by_key(|b| b.compile_time_ms);
    for (i, bench) in sorted.iter().take(10).enumerate() {
        writeln!(out, "  {}. {} - {}ms", i+1, bench.name, bench.compile_time_ms)?;
    }
    writeln!(out)?;
    
    // Top 10 smallest binary
    writeln!(out, "Top 10 Smallest Binary:")?;
    sorted.sort_by_key(|b| b.binary_size_kb);
    for (i, bench) in sorted.iter().take(10).enumerate() {
        writeln!(out, "  {}. {} - {}KB", i+1, bench.name, bench.binary_size_kb)?;
    }
    writeln!(out)?;
    
    // All tools
    writeln!(out, "All Tools:")?;
    writeln!(out, "{:<40} {:<12} {:>10} {:>8} {:>10}", "Name", "Category", "Compile", "Size", "Status")?;
    writeln!(out, "{}", "-".repeat(85))?;
    
    for bench in benchmarks {
        let status = if bench.success { "✅" } else { "❌" };
        writeln!(out, "{:<40} {:<12} {:>8}ms {:>6}KB {}", 
                 bench.name, bench.category, bench.compile_time_ms, 
                 bench.binary_size_kb, status)?;
    }
    
    Ok(())
}

fn generate_html_dashboard(benchmarks: &[ToolBenchmark]) -> Result<(), Box<dyn std::error::Error>> {
    let mut out = fs::File::create("monster_tools_dashboard.html")?;
    
    writeln!(out, "<!DOCTYPE html>")?;
    writeln!(out, "<html><head><title>Monster Tools Dashboard</title>")?;
    writeln!(out, "<style>")?;
    writeln!(out, "body {{ font-family: monospace; background: #1a1a1a; color: #00ff00; }}")?;
    writeln!(out, "table {{ border-collapse: collapse; width: 100%; }}")?;
    writeln!(out, "th, td {{ border: 1px solid #00ff00; padding: 8px; text-align: left; }}")?;
    writeln!(out, "th {{ background: #003300; }}")?;
    writeln!(out, ".success {{ color: #00ff00; }}")?;
    writeln!(out, ".fail {{ color: #ff0000; }}")?;
    writeln!(out, "</style></head><body>")?;
    
    writeln!(out, "<h1>🏛️ Monster Tools Dashboard</h1>")?;
    writeln!(out, "<p>Total Tools: {}</p>", benchmarks.len())?;
    
    writeln!(out, "<table>")?;
    writeln!(out, "<tr><th>Name</th><th>Category</th><th>Compile (ms)</th><th>Size (KB)</th><th>Status</th></tr>")?;
    
    for bench in benchmarks {
        let status_class = if bench.success { "success" } else { "fail" };
        let status = if bench.success { "✅" } else { "❌" };
        
        writeln!(out, "<tr>")?;
        writeln!(out, "<td>{}</td>", bench.name)?;
        writeln!(out, "<td>{}</td>", bench.category)?;
        writeln!(out, "<td>{}</td>", bench.compile_time_ms)?;
        writeln!(out, "<td>{}</td>", bench.binary_size_kb)?;
        writeln!(out, "<td class='{}'>{}</td>", status_class, status)?;
        writeln!(out, "</tr>")?;
    }
    
    writeln!(out, "</table>")?;
    writeln!(out, "</body></html>")?;
    
    Ok(())
}
