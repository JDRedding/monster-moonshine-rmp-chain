# Formal Rust Syn + Parquet Analysis Summary

**Date**: 2026-01-30  
**Tools Analyzed**: 111  
**Analysis Type**: AST structure + Parquet usage + Monster Group alignment

## Executive Summary

Performed formal analysis of all 111 Rust tools in `src/bin/` using:
1. **AST Analysis**: Functions, structs, enums, impls (pattern-based)
2. **Parquet Usage**: ParquetReader/Writer operations
3. **Monster Alignment**: Prime factors, ZK71, Galois keywords

## Top 10 Tools by Complexity Score

| Rank | Name | Fns | Structs | Impls | Parquet | Monster | Score |
|------|------|-----|---------|-------|---------|---------|-------|
| 1 | `prime_resonance_hecke` | 13 | 10 | 7 | 0 | 1.0 | 65.5 |
| 2 | `cuda_monster_pipeline` | 24 | 6 | 3 | 0 | 2.0 | 65.0 |
| 3 | `monster_is_meme` | 10 | 6 | 4 | 0 | 2.0 | 54.0 |
| 4 | `zk71_kernel_overlay` | 4 | 0 | 0 | ✓(2) | 3.0 | 45.5 |
| 5 | `zk71_integration_test` | 8 | 1 | 1 | 0 | 3.0 | 44.5 |
| 6 | `zk71_unified_fs` | 4 | 1 | 0 | ✓(1) | 3.0 | 42.5 |
| 7 | `zk71_full_spectrum_sweep` | 5 | 1 | 0 | ✓(1) | 3.0 | 42.0 |
| 8 | `monster_walk_gpu` | 10 | 4 | 1 | 0 | 2.0 | 41.0 |
| 9 | `monster_gpu_consumer` | 11 | 3 | 1 | 0 | 2.0 | 40.0 |
| 10 | `quantum_71_shards` | 2 | 3 | 0 | 0 | 3.0 | 38.0 |

## Key Findings

### 1. Parquet Usage
- **Total tools using Parquet**: 25/111 (22.5%)
- **Top Parquet tools**:
  - `syn_parquet_analysis` (5 ops)
  - `unified_formal_analysis` (4 ops)
  - `model_all_columns` (3 ops)
  - `zk71_kernel_overlay` (2 ops)

### 2. Monster Alignment
- **ZK71 tools**: 7 tools with perfect 3.0 alignment
  - `zk71_kernel_overlay`, `zk71_integration_test`, `zk71_unified_fs`
  - `zk71_full_spectrum_sweep`, `quantum_71_shards`, `extract_71_objects`
  - `graded_ring_71`, `shard_lmfdb_by_71`, `zk71_zone_quine`
- **Monster-named tools**: 15 tools with 2.0 alignment
- **Galois/Hecke tools**: 3 tools with 1.0 alignment

### 3. Complexity Distribution
- **Most complex** (by impl count): `prime_resonance_hecke` (7 impls)
- **Most functions**: `cuda_monster_pipeline` (24 fns)
- **Most structs**: `prime_resonance_hecke` (10 structs)

### 4. Combined Excellence
Tools scoring high on ALL metrics:
- `zk71_kernel_overlay`: High Monster (3.0) + Parquet (2 ops) = 45.5
- `prime_resonance_hecke`: High complexity (13 fns, 10 structs, 7 impls) + Monster (1.0) = 65.5

## Scoring Formula

```rust
complexity_score = 
    (functions × 1.0) +
    (structs × 2.0) +
    (enums × 1.5) +
    (impls × 3.0) +
    (parquet_ops × 5.0) +
    (monster_alignment × 10.0)
```

**Monster Alignment**:
- Contains "monster": +2.0
- Contains "zk" or "71": +1.0
- Contains "galois" or "hecke": +1.0
- Contains Monster prime (2,3,5,7,11,13,17,19,23,29,31,41,47,59,71): +1.0

## Generated Files

1. **syn_parquet_analysis.txt** - Basic syn + parquet counts
2. **ast_analysis.txt** - Deep AST structure analysis
3. **unified_analysis.txt** - Combined analysis (text)
4. **unified_analysis.html** - Interactive HTML table with color coding

## Recommendations

### For Search Integration
Focus on these tools for Monster Search factorization:
1. `zk71_full_spectrum_sweep` - Already searches all layers
2. `zk71_kernel_overlay` - In-memory search with parquet
3. `prime_resonance_hecke` - Complex structure, Hecke alignment

### For GPU Pipeline
Prioritize:
1. `cuda_monster_pipeline` - Highest function count (24)
2. `monster_walk_gpu` - GPU + Monster alignment
3. `gpu_token_pipeline` - 11 functions, 6 structs

### For ZK71 Integration
Core ZK71 tools (all with 3.0 alignment):
1. `zk71_kernel_overlay` - Search + Parquet
2. `zk71_unified_fs` - Filesystem + Parquet
3. `zk71_full_spectrum_sweep` - Full spectrum search
4. `zk71_integration_test` - Testing framework

## Next Steps

1. **Benchmark Performance**: Run `perf record` on top 20 tools
2. **Factor by Monster Primes**: Extract bits from each tool according to 2^46 × 3^20 × ...
3. **Integrate Search**: Combine `zk71_full_spectrum_sweep` with `monster_search_factorized`
4. **GPU Acceleration**: Lift top parquet tools to GPU via `shmem/gpu_loader.py`

## Methodology

**Analysis Tools**:
- `syn_parquet_analysis.rs` - Basic pattern matching
- `deep_syn_ast_analysis.rs` - Line-by-line AST counting
- `unified_formal_analysis.rs` - Combined scoring system

**Limitations**:
- Pattern-based (not true syn parsing due to dependency issues)
- Counts top-level items only (no nested analysis)
- Monster alignment is heuristic-based

**Future Work**:
- Add true `syn` crate parsing for accurate AST
- Include macro expansion analysis
- Add cyclomatic complexity metrics
- Integrate with `monster_search_factorized.rs` for bit extraction
