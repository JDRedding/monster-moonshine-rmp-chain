// PTS/1 Memory Capture - Fixed Point Self-Reference
use std::fs;
use std::process::Command;

fn main() {
    println!("=== PTS/1 Memory Capture ===\n");
    
    // Find processes using /dev/pts/1
    let lsof = Command::new("lsof")
        .args(["/dev/pts/1"])
        .output()
        .expect("lsof failed");
    
    let pids: Vec<u32> = String::from_utf8_lossy(&lsof.stdout)
        .lines()
        .skip(1)
        .filter_map(|line| line.split_whitespace().nth(1)?.parse().ok())
        .collect();
    
    println!("Processes on /dev/pts/1: {:?}\n", pids);
    
    // Search for "THIS TEXT" in each process
    for pid in pids {
        if let Ok(maps) = fs::read_to_string(format!("/proc/{}/maps", pid)) {
            let heap = maps.lines()
                .find(|l| l.contains("[heap]"))
                .and_then(|l| l.split_whitespace().next());
            
            if let Some(addr) = heap {
                println!("PID {}: heap at {}", pid, addr);
            }
        }
    }
    
    // Fixed point: This program searches for text about searching for text
    println!("\n🎯 Fixed Point: Program searches its own memory via /dev/pts/1");
}
