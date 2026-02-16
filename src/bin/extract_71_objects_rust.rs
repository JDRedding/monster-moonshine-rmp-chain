// Extract ALL mathematical objects with value 71 from LMFDB
// Parse actual data structures using syn AST

use std::collections::HashMap;
use std::fs;
use std::path::Path;
use serde::{Serialize, Deserialize};
use serde_json;

#[derive(Debug, Serialize, Deserialize)]
struct Object71 {
    file: String,
    line: usize,
    #[serde(skip_serializing_if = "Option::is_none")]
    name: Option<String>,
    #[serde(skip_serializing_if = "Option::is_none")]
    function: Option<String>,
    value: i32,
    obj_type: String,
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    println!("🔬 EXTRACTING ALL 71-VALUED OBJECTS FROM LMFDB");
    println!("{}", "=".repeat(60));
    println!();
    
    let lmfdb_path = "/mnt/data1/nix/source/github/meta-introspector/lmfdb";
    let mut objects_found: HashMap<String, Vec<Object71>> = HashMap::new();
    let mut total = 0;
    
    // Find all Python files
    let py_files: Vec<_> = walkdir::WalkDir::new(lmfdb_path)
        .into_iter()
        .filter_map(|e| e.ok())
        .filter(|e| e.path().extension().map_or(false, |ext| ext == "py"))
        .collect();
    
    println!("Parsing {} Python files...\n", py_files.len());
    
    for (i, entry) in py_files.iter().enumerate() {
        if i % 100 == 0 {
            println!("Progress: {}/{}", i, py_files.len());
        }
        
        let path = entry.path();
        if let Ok(content) = fs::read_to_string(path) {
            // Simple pattern matching (not full AST)
            for (line_num, line) in content.lines().enumerate() {
                let line_num = line_num + 1;
                
                // Assignment: x = 71
                if line.contains("= 71") {
                    if let Some(name) = extract_var_name(line) {
                        objects_found.entry("assignment".to_string())
                            .or_default()
                            .push(Object71 {
                                file: path.strip_prefix(lmfdb_path)
                                    .unwrap_or(path)
                                    .display()
                                    .to_string(),
                                line: line_num,
                                name: Some(name),
                                function: None,
                                value: 71,
                                obj_type: "assignment".to_string(),
                            });
                        total += 1;
                    }
                }
                
                // Function call: func(71)
                if line.contains("(71") || line.contains(", 71") || line.contains("=71") {
                    if let Some(func) = extract_function_name(line) {
                        objects_found.entry("function_arg".to_string())
                            .or_default()
                            .push(Object71 {
                                file: path.strip_prefix(lmfdb_path)
                                    .unwrap_or(path)
                                    .display()
                                    .to_string(),
                                line: line_num,
                                name: None,
                                function: Some(func),
                                value: 71,
                                obj_type: "function_arg".to_string(),
                            });
                        total += 1;
                    }
                }
                
                // Comparison: == 71, > 71, etc.
                if line.contains("== 71") || line.contains("> 71") || line.contains("< 71") {
                    objects_found.entry("comparison".to_string())
                        .or_default()
                        .push(Object71 {
                            file: path.strip_prefix(lmfdb_path)
                                .unwrap_or(path)
                                .display()
                                .to_string(),
                            line: line_num,
                            name: None,
                            function: None,
                            value: 71,
                            obj_type: "comparison".to_string(),
                        });
                    total += 1;
                }
            }
        }
    }
    
    println!("\n📊 OBJECTS FOUND BY TYPE:");
    println!("{}", "-".repeat(60));
    
    let mut types: Vec<_> = objects_found.keys().collect();
    types.sort();
    
    for obj_type in types {
        let count = objects_found[obj_type].len();
        println!("{:15}: {:4} objects", obj_type, count);
    }
    
    println!("\nTotal objects: {}\n", total);
    
    // Show examples
    println!("🎯 EXAMPLES BY TYPE:");
    println!("{}", "-".repeat(60));
    
    for obj_type in objects_found.keys() {
        let objs = &objects_found[obj_type];
        if !objs.is_empty() {
            println!("\n{}:", obj_type.to_uppercase());
            for obj in objs.iter().take(3) {
                println!("  {}:{}", obj.file, obj.line);
                if let Some(ref name) = obj.name {
                    println!("    {} = 71", name);
                } else if let Some(ref func) = obj.function {
                    println!("    {}(71)", func);
                }
            }
        }
    }
    
    // Save
    let output = serde_json::json!({
        "total_objects": total,
        "by_type": objects_found.iter()
            .map(|(k, v)| (k.clone(), v.len()))
            .collect::<HashMap<_, _>>(),
        "objects": objects_found,
    });
    
    fs::write("lmfdb_71_objects.json", serde_json::to_string_pretty(&output)?)?;
    
    println!("\n💾 Saved to: lmfdb_71_objects.json");
    println!("\n✅ EXTRACTION COMPLETE");
    
    Ok(())
}

fn extract_var_name(line: &str) -> Option<String> {
    let parts: Vec<&str> = line.split('=').collect();
    if parts.len() >= 2 {
        let name = parts[0].trim().split_whitespace().last()?;
        Some(name.to_string())
    } else {
        None
    }
}

fn extract_function_name(line: &str) -> Option<String> {
    if let Some(pos) = line.find('(') {
        let before = &line[..pos];
        let name = before.trim().split_whitespace().last()?;
        Some(name.to_string())
    } else {
        None
    }
}
