# Formal Analysis Index

**Generated**: 2026-01-30  
**Total Tools Analyzed**: 111  
**Analysis Programs**: 3

## Quick Links

### Generated Reports
1. [syn_parquet_analysis.txt](syn_parquet_analysis.txt) - Basic syn + parquet counts
2. [ast_analysis.txt](ast_analysis.txt) - Deep AST structure
3. [unified_analysis.txt](unified_analysis.txt) - Combined analysis (canonical)
4. [unified_analysis.html](unified_analysis.html) - Interactive HTML table
5. [analysis_comparison.txt](analysis_comparison.txt) - Cross-analysis comparison
6. [FORMAL_ANALYSIS_SUMMARY.md](FORMAL_ANALYSIS_SUMMARY.md) - Executive summary

### Analysis Programs
1. [src/bin/syn_parquet_analysis.rs](src/bin/syn_parquet_analysis.rs)
2. [src/bin/deep_syn_ast_analysis.rs](src/bin/deep_syn_ast_analysis.rs)
3. [src/bin/unified_formal_analysis.rs](src/bin/unified_formal_analysis.rs) ⭐ **Recommended**

## Top 10 Tools (Canonical Ranking)

From `unified_analysis.txt`:

| Rank | Tool | Score | Category |
|------|------|-------|----------|
| 1 | `prime_resonance_hecke` | 65.5 | Hecke + Complex AST |
| 2 | `cuda_monster_pipeline` | 65.0 | GPU + Monster |
| 3 | `monster_is_meme` | 54.0 | Monster + Meme |
| 4 | `zk71_kernel_overlay` | 45.5 | ZK71 + Parquet |
| 5 | `zk71_integration_test` | 44.5 | ZK71 + Testing |
| 6 | `zk71_unified_fs` | 42.5 | ZK71 + Filesystem |
| 7 | `zk71_full_spectrum_sweep` | 42.0 | ZK71 + Search |
| 8 | `monster_walk_gpu` | 41.0 | Monster + GPU |
| 9 | `monster_gpu_consumer` | 40.0 | Monster + GPU |
| 10 | `quantum_71_shards` | 38.0 | ZK71 + Quantum |

## Key Metrics

### Parquet Usage
- **Total**: 25/111 tools (22.5%)
- **Top 5**:
  1. `syn_parquet_analysis` (5 ops)
  2. `unified_formal_analysis` (4 ops)
  3. `model_all_columns` (3 ops)
  4. `zk71_kernel_overlay` (2 ops)
  5. `vectorize_all_parquets` (2 ops)

### Monster Alignment
- **Perfect (3.0)**: 9 ZK71 tools
- **High (2.0)**: 15 Monster-named tools
- **Medium (1.0)**: 3 Galois/Hecke tools

### AST Complexity
- **Most functions**: `cuda_monster_pipeline` (24)
- **Most structs**: `prime_resonance_hecke` (10)
- **Most impls**: `prime_resonance_hecke` (7)

## Usage

### Run All Analyses
```bash
cargo run --bin syn_parquet_analysis
cargo run --bin deep_syn_ast_analysis
cargo run --bin unified_formal_analysis
```

### View Results
```bash
# Text reports
cat unified_analysis.txt
cat FORMAL_ANALYSIS_SUMMARY.md

# HTML (open in browser)
firefox unified_analysis.html
```

### Compare Analyses
```bash
cat analysis_comparison.txt
```

## Integration with Monster Search

These tools are ready for integration with `monster_search_factorized.rs`:

1. **ZK71 Search Tools** (3.0 alignment):
   - `zk71_full_spectrum_sweep` - Search across all layers
   - `zk71_kernel_overlay` - In-memory search with parquet
   - `zk71_unified_fs` - Unified filesystem

2. **Parquet Tools** (high ops count):
   - `syn_parquet_analysis` (5 ops)
   - `unified_formal_analysis` (4 ops)
   - `model_all_columns` (3 ops)

3. **Complex AST Tools** (high impl count):
   - `prime_resonance_hecke` (7 impls)
   - `monster_is_meme` (4 impls)
   - `cuda_monster_pipeline` (3 impls)

## Next Steps

1. **Benchmark**: Run `perf record` on top 20 tools
2. **Factor**: Extract bits by Monster primes (2^46 × 3^20 × ...)
3. **Integrate**: Combine with `monster_search_factorized.rs`
4. **GPU**: Lift parquet tools to GPU via `shmem/gpu_loader.py`
5. **Dashboard**: Create interactive dashboard with all metrics

## Methodology

**Scoring Formula**:
```
score = (fns × 1.0) + (structs × 2.0) + (enums × 1.5) + 
        (impls × 3.0) + (parquet_ops × 5.0) + (monster_align × 10.0)
```

**Monster Alignment**:
- "monster" keyword: +2.0
- "zk" or "71": +1.0
- "galois" or "hecke": +1.0
- Monster prime in name: +1.0

**Limitations**:
- Pattern-based AST (not true syn parsing)
- Top-level items only (no nesting)
- Heuristic Monster alignment

## Related Documentation

- [PROGRAM_INDEX.md](PROGRAM_INDEX.md) - All 200+ programs
- [100_ATTEMPTS_ANALYSIS.md](100_ATTEMPTS_ANALYSIS.md) - Historical analysis
- [SEARCH_TOOLS_INVENTORY.md](SEARCH_TOOLS_INVENTORY.md) - Search tools catalog
- [monster_tools_catalog.txt](monster_tools_catalog.txt) - Quick catalog
- [monster_tools_catalog.html](monster_tools_catalog.html) - HTML catalog

---

**Canonical Source**: `unified_analysis.txt` (111 tools, weighted scoring)  
**Interactive View**: `unified_analysis.html` (color-coded table)  
**Executive Summary**: `FORMAL_ANALYSIS_SUMMARY.md` (recommendations)
