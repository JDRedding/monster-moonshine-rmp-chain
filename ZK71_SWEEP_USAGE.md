# ZK71 Full Spectrum Sweep - Usage Guide

## Quick Start

```bash
# Search for "lmfdb" across all storage layers
cargo run --bin zk71_full_spectrum_sweep lmfdb

# Search for "prolog"
cargo run --bin zk71_full_spectrum_sweep prolog

# Search for "monster"
cargo run --bin zk71_full_spectrum_sweep monster
```

## What It Does

Searches **all 71 ZK shards** across **3 storage layers**:
1. **Shmem** - Shared memory (primary, fastest)
2. **Prolog** - zkprologml-erdfa shards
3. **HDD** - Disk storage (temp/ci_artifacts)

## Output

### Console
```
🌈 ZK71 Full Spectrum Sweep
━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📡 Found 71 shard locations across all layers
🔗 Unified 71 shards

🔍 Searching for: 'lmfdb'
  Shard  0 [shmem]: 48 matches
  Shard  1 [shmem]: 49 matches
  ...

✅ Total: 9248 matches across all layers
```

### Report File
`zk71_sweep_report.txt` contains:
- Query used
- Storage layer descriptions
- Shard distribution (which shards on which layers)
- Monster prime mapping

## Storage Layers

### Layer 1: Shmem (Primary)
- **Location**: `shmem/zk-shards/shard_*.parquet`
- **Format**: Compressed parquet
- **Speed**: Fastest (in-memory)
- **Shards**: 71 (0-70)

### Layer 2: Prolog
- **Location**: `prolog/zkprolog-shards/shard_*.pl`
- **Format**: Prolog facts
- **Speed**: Medium
- **Shards**: 23 (complexity-based)

### Layer 3: HDD
- **Location**: `temp/ci_artifacts/*.parquet`
- **Format**: Parquet
- **Speed**: Slowest (disk I/O)
- **Shards**: Variable (hash-based)

## Architecture

```
Query → Discover All Shards → Unified Index → Search → Report
         ↓                      ↓               ↓
      [shmem]              [HashMap]      [Per-shard]
      [prolog]             [by ID]        [Per-layer]
      [hdd]                               [Total]
```

## Monster Prime Mapping

Each shard maps to a Monster prime (mod 15):
```
Shard  0 → Prime  2
Shard  1 → Prime  3
Shard  2 → Prime  5
...
Shard 14 → Prime 71
Shard 15 → Prime  2 (cycles)
```

## Use Cases

### 1. Find All References
```bash
cargo run --bin zk71_full_spectrum_sweep "galois"
```

### 2. Search Code
```bash
cargo run --bin zk71_full_spectrum_sweep "fn main"
```

### 3. Find Proofs
```bash
cargo run --bin zk71_full_spectrum_sweep "theorem"
```

### 4. Locate Data
```bash
cargo run --bin zk71_full_spectrum_sweep "elliptic_curve"
```

## Integration

### With ZK71 Filesystem
```rust
use zk71fs::ZK71FS;

let fs = ZK71FS::new();
fs.mount("shmem/zk-shards")?;
let results = fs.search("query", "json")?;
```

### With Kernel Overlay
```bash
# Load kernel module
insmod zk71_overlay.ko

# Search via /dev/zk71
cat /dev/zk71/search?q=lmfdb
```

## Performance

- **Shmem**: ~1ms per shard
- **Prolog**: ~10ms per shard (if implemented)
- **HDD**: ~100ms per shard

**Total**: ~100ms for full spectrum sweep (71 shards)

## Output Format

### Per-Shard Results
```
Shard ID [Layer]: Match count
```

### Total Summary
```
✅ Total: N matches across all layers
```

## Advanced Usage

### Filter by Layer
```rust
// Only search shmem
let locations = discover_all_shards()?
    .into_iter()
    .filter(|loc| loc.layer == "shmem")
    .collect();
```

### Filter by Prime
```rust
// Only search shards with prime 71
let locations = discover_all_shards()?
    .into_iter()
    .filter(|loc| MONSTER_PRIMES[(loc.shard_id % 15) as usize] == 71)
    .collect();
```

### Custom Search Function
```rust
fn search_df(df: &DataFrame, query: &str) -> Result<usize, Box<dyn std::error::Error>> {
    // Your custom search logic
}
```

## Troubleshooting

### No matches found
- Check if shards exist: `ls shmem/zk-shards/`
- Verify query spelling
- Try case-insensitive search (default)

### Slow performance
- Shards not in shmem (using HDD)
- Large parquet files
- Solution: Preload to shmem

### Missing shards
- Run: `cargo run --bin zk_to_gpu_shards`
- Regenerate: `cargo run --bin lmfdb_to_zkprolog_shards`

## Related Tools

- `zk71_unified_fs.rs` - Filesystem driver
- `zk71_kernel_overlay.rs` - Kernel module
- `zk_to_gpu_shards.rs` - GPU loader
- `lmfdb_to_zkprolog_shards.rs` - Shard generator

## Files Generated

- `zk71_sweep_report.txt` - Sweep report
- Console output - Real-time results

## Next Steps

1. **GPU Acceleration**: Lift shards to GPU for parallel search
2. **HuggingFace Sync**: Upload shards for distributed search
3. **Archive.org Backup**: Long-term storage
4. **RAID Redundancy**: Multi-disk mirroring
