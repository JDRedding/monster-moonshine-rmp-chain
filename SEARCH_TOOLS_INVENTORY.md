# ZK71 Search Tools Inventory

## All Search Tools in Monster Project

### 1. **ZK71 Full Spectrum Sweep** ⭐ NEW
**File**: `src/bin/zk71_full_spectrum_sweep.rs`
**Purpose**: Search across ALL storage layers (HDD, shmem, GPU)
**Usage**: `cargo run --bin zk71_full_spectrum_sweep <query>`
**Features**:
- Searches 71 ZK shards
- 3 storage layers (shmem, prolog, HDD)
- Unified index
- Monster prime mapping
- Report generation

### 2. **ZK71 Kernel Overlay**
**File**: `src/bin/zk71_kernel_overlay.rs`
**Purpose**: In-memory search with format conversion
**Usage**: `cargo run --bin zk71_kernel_overlay`
**Features**:
- Parquet → CSV/JSON/RDF
- ZK proof per read
- Data masking
- Kernel module template

### 3. **Search Parquet Batch**
**File**: `onlyskills-repo/src/bin/search_parquet_batch.rs`
**Purpose**: Batch search multiple parquet files
**Usage**: `search_parquet_batch <file_list> <pattern1> [pattern2...]`
**Features**:
- Multi-file search
- Multi-pattern matching
- Column-aware search

### 4. **Prolog Searcher**
**File**: `onlyskills-repo/src/bin/prolog_searcher.rs`
**Purpose**: Search Prolog knowledge base
**Usage**: `prolog_searcher <term>`
**Features**:
- Index-based search
- zkerdfa URL execution
- Prolog query generation

### 5. **Lightning Git Search**
**File**: `onlyskills-repo/src/bin/lightning_git_search.rs`
**Purpose**: Fast git repository search
**Usage**: `lightning_git_search <pattern>`
**Features**:
- Git-aware search
- Fast indexing
- Repository traversal

### 6. **Code Search (LLM Analysis)**
**File**: `ml/llm_analysis/ollama-monster/src/code_search.rs`
**Purpose**: LLM-powered code search
**Features**:
- Semantic search
- Code understanding
- Context-aware

### 7. **Image Search**
**File**: `examples/iarelife/src/image_search.rs`
**Purpose**: Search generated images by Monster primes
**Features**:
- Seed-based search
- Monster prime filtering
- Image metadata search

### 8. **LMFDB Search Tools**
**Files**: `monster-shards/shard-*/rust/*/searchers.rs`
**Purpose**: Domain-specific LMFDB searches
**Modules**:
- `elliptic_curves/searchers.rs` - Elliptic curve search
- `api2/searchers.rs` - API search functions
- `ecnf/searchers.rs` - Number field search
- `abvar/search_parsing.rs` - Abelian variety search
- `utils/search_*.rs` - Search utilities

### 9. **Verus Search Benchmarks**
**Files**: `vericoding/verus/src/**/*search*.rs`
**Purpose**: Verified search algorithms
**Types**:
- Binary search (verified)
- Linear search (verified)
- Canyon search (verified)
**Features**:
- Formal verification
- Preconditions/postconditions
- Proof synthesis

## Search Tool Comparison

| Tool | Speed | Scope | Format | ZK Proof |
|------|-------|-------|--------|----------|
| Full Spectrum Sweep | Fast | All layers | Parquet | ✅ |
| Kernel Overlay | Fastest | Shmem | Multi | ✅ |
| Parquet Batch | Medium | Files | Parquet | ❌ |
| Prolog Searcher | Fast | Prolog KB | Prolog | ✅ |
| Lightning Git | Fastest | Git repos | Text | ❌ |
| Code Search | Slow | Code | AST | ❌ |
| Image Search | Fast | Images | Metadata | ❌ |
| LMFDB Search | Medium | LMFDB | DB | ❌ |
| Verus Search | N/A | Verified | Proof | ✅ |

## Usage Patterns

### Quick Search
```bash
# Search everything
cargo run --bin zk71_full_spectrum_sweep <query>
```

### Parquet Files
```bash
# Batch search
cargo run --bin search_parquet_batch files.txt pattern1 pattern2
```

### Prolog Knowledge
```bash
# Search Prolog
cargo run --bin prolog_searcher <term>
```

### Git Repositories
```bash
# Fast git search
cargo run --bin lightning_git_search <pattern>
```

### Code
```bash
# Semantic code search
cargo run --bin code_search <query>
```

### Images
```bash
# Search by Monster prime
cargo run --bin image_search --prime 71
```

## Integration

### Unified Search API
```rust
// Search all tools from one interface
use zk71_search::*;

let results = unified_search("query")
    .layer("shmem")
    .layer("prolog")
    .layer("hdd")
    .execute()?;
```

### Search Pipeline
```
Query → Full Spectrum Sweep → Kernel Overlay → Format Conversion → Results
         ↓                      ↓                 ↓
      [All layers]         [In-memory]       [CSV/JSON/RDF]
```

## Performance

| Tool | Latency | Throughput |
|------|---------|------------|
| Full Spectrum | ~100ms | 71 shards |
| Kernel Overlay | ~1ms | Per shard |
| Parquet Batch | ~10ms | Per file |
| Prolog | ~5ms | Per query |
| Lightning Git | ~50ms | Per repo |

## Future Tools

1. **GPU Parallel Search** - Lift all shards to GPU
2. **Distributed Search** - HuggingFace/Archive.org
3. **Semantic Search** - Embedding-based
4. **Fuzzy Search** - Approximate matching
5. **Regex Search** - Pattern matching

## Related Documentation

- [ZK71_SWEEP_USAGE.md](ZK71_SWEEP_USAGE.md) - Full spectrum sweep guide
- [GALOIS_ZIGGURAT.md](GALOIS_ZIGGURAT.md) - Complexity lattice
- [ZK71_QUINE_PATTERN.md](ZK71_QUINE_PATTERN.md) - Zone system

## Quick Reference

```bash
# Search everything
cargo run --bin zk71_full_spectrum_sweep lmfdb

# Search parquet
cargo run --bin search_parquet_batch files.txt pattern

# Search prolog
cargo run --bin prolog_searcher term

# Search git
cargo run --bin lightning_git_search pattern
```

**The entire project is now searchable across all dimensions!** 🔍
