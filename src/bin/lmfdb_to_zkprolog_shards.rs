// LMFDB to zkprologml-erdfa-71 Shards
// Each declaration gets its own shard based on complexity level

use polars::prelude::*;
use std::collections::HashMap;
use std::fs;
use std::io::Write;
use std::path::Path;

const MONSTER_PRIMES: [u64; 15] = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71];

fn main() -> Result<(), Box<dyn std::error::Error>> {
    println!("🔱 LMFDB → zkprologml-erdfa-71 Shards");
    println!("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
    
    // Read LMFDB parquet
    let path = Path::new("/home/mdupont/experiments/monster/temp/ci_artifacts/lmfdb_reconstructed.parquet");
    let df = ParquetReader::new(fs::File::open(path)?).finish()?;
    
    println!("📊 Loaded {} objects", df.height());
    
    // Group by complexity level
    let mut shards: HashMap<u64, Vec<LmfdbDecl>> = HashMap::new();
    
    for i in 0..df.height().min(1000) {
        let complexity = df.column("complexity")?.get(i)?.try_extract::<i64>()? as u64;
        let level = df.column("level")?.get(i)?.try_extract::<i64>()? as u64;
        let obj_id = df.column("object_id")?.get(i)?.to_string();
        let obj_type = df.column("type")?.get(i)?.to_string();
        let code = df.column("code")?.get(i)?.to_string();
        
        let shard_id = level % 71;
        
        shards.entry(shard_id).or_insert_with(Vec::new).push(LmfdbDecl {
            object_id: obj_id,
            obj_type,
            complexity,
            level,
            code,
        });
    }
    
    println!("📦 Created {} shards", shards.len());
    
    // Generate zkprolog shard for each
    fs::create_dir_all("prolog/zkprolog-shards")?;
    
    for (shard_id, decls) in &shards {
        let filename = format!("prolog/zkprolog-shards/shard_{:02}.pl", shard_id);
        let mut out = fs::File::create(&filename)?;
        
        write_shard_header(&mut out, *shard_id, decls.len())?;
        
        for decl in decls {
            write_zkprolog_decl(&mut out, *shard_id, decl)?;
        }
        
        write_shard_footer(&mut out, *shard_id)?;
        
        println!("  ✅ shard_{:02}.pl ({} decls)", shard_id, decls.len());
    }
    
    // Generate master index
    generate_master_index(&shards)?;
    
    println!("\n✅ Generated {} zkprologml-erdfa-71 shards", shards.len());
    Ok(())
}

#[derive(Debug, Clone)]
struct LmfdbDecl {
    object_id: String,
    obj_type: String,
    complexity: u64,
    level: u64,
    code: String,
}

fn write_shard_header(out: &mut fs::File, shard_id: u64, count: usize) -> Result<(), Box<dyn std::error::Error>> {
    writeln!(out, "% zkprologml-erdfa-71 Shard {}", shard_id)?;
    writeln!(out, "% Complexity lattice level: {}", shard_id)?;
    writeln!(out, "% Declarations: {}", count)?;
    writeln!(out)?;
    
    writeln!(out, ":- module(zkprolog_shard_{}, [", shard_id)?;
    writeln!(out, "    lmfdb_decl/5,")?;
    writeln!(out, "    erdfa_witness/3,")?;
    writeln!(out, "    zk_proof/2,")?;
    writeln!(out, "    shard_prime/1")?;
    writeln!(out, "]).")?;
    writeln!(out)?;
    
    let prime = MONSTER_PRIMES[(shard_id % 15) as usize];
    writeln!(out, "% Shard prime: {}", prime)?;
    writeln!(out, "shard_prime({}).", prime)?;
    writeln!(out)?;
    
    Ok(())
}

fn write_zkprolog_decl(out: &mut fs::File, shard_id: u64, decl: &LmfdbDecl) -> Result<(), Box<dyn std::error::Error>> {
    let safe_id = sanitize(&decl.object_id);
    let safe_type = sanitize(&decl.obj_type);
    let safe_code = sanitize(&decl.code[..decl.code.len().min(100)]);
    
    writeln!(out, "% Declaration: {}", safe_id)?;
    writeln!(out, "lmfdb_decl('{}', '{}', {}, {}, '{}').", 
             safe_id, safe_type, decl.complexity, decl.level, safe_code)?;
    
    // ERDFA witness (RDF + ZK proof)
    writeln!(out, "erdfa_witness('{}', shard_{}, complexity_{}).", 
             safe_id, shard_id, decl.complexity)?;
    
    // ZK proof (hash of declaration)
    let proof_hash = format!("{:x}", md5::compute(decl.code.as_bytes()));
    writeln!(out, "zk_proof('{}', '{}').", safe_id, proof_hash)?;
    writeln!(out)?;
    
    Ok(())
}

fn write_shard_footer(out: &mut fs::File, shard_id: u64) -> Result<(), Box<dyn std::error::Error>> {
    writeln!(out, "% End of shard {}", shard_id)?;
    Ok(())
}

fn generate_master_index(shards: &HashMap<u64, Vec<LmfdbDecl>>) -> Result<(), Box<dyn std::error::Error>> {
    let mut out = fs::File::create("prolog/zkprolog-shards/index.pl")?;
    
    writeln!(out, "% zkprologml-erdfa-71 Master Index")?;
    writeln!(out, "% {} shards total", shards.len())?;
    writeln!(out)?;
    
    writeln!(out, ":- module(zkprolog_index, [")?;
    writeln!(out, "    shard_info/3,")?;
    writeln!(out, "    load_shard/1,")?;
    writeln!(out, "    all_shards/1")?;
    writeln!(out, "]).")?;
    writeln!(out)?;
    
    for (shard_id, decls) in shards {
        let prime = MONSTER_PRIMES[(shard_id % 15) as usize];
        writeln!(out, "shard_info({}, {}, {}).", shard_id, decls.len(), prime)?;
    }
    
    writeln!(out)?;
    writeln!(out, "load_shard(N) :- ")?;
    writeln!(out, "    format(atom(Module), 'prolog/zkprolog-shards/shard_~|~`0t~d~2+.pl', [N]),")?;
    writeln!(out, "    consult(Module).")?;
    writeln!(out)?;
    
    writeln!(out, "all_shards(Shards) :- ")?;
    writeln!(out, "    findall(S, shard_info(S, _, _), Shards).")?;
    
    Ok(())
}

fn sanitize(s: &str) -> String {
    s.chars()
        .filter(|c| c.is_alphanumeric() || *c == '_' || *c == '-')
        .take(50)
        .collect()
}
