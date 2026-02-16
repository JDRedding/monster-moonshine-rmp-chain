# Experiment Log: Perf Data Compression via FRACTRAN

**Date**: 2026-02-16  
**Experiment ID**: EXP-2026-02-16-003  
**Objective**: Compress perf data using FRACTRAN encoding based on mod 71 distribution

## Background

### Previous Results (EXP-2026-02-16-002)
Perf data shows **non-uniform distribution** modulo 71:
- Chi-squared: 754.38 (highly significant)
- Bucket 58: +62.06% deviation
- Prime 31: +35.18% deviation
- Prime 41: -22.40% deviation

## FRACTRAN Compression Strategy

### Concept
FRACTRAN is a Turing-complete programming language using fractions:
```
Program: [f₁, f₂, f₃, ...]
State: n (integer)
Step: n → n × fᵢ (first fᵢ where n × fᵢ is integer)
```

### Encoding Perf Data
Use Monster primes to encode distribution:
```
State = 2^b₀ × 3^b₁ × 5^b₂ × 7^b₃ × ... × 71^b₇₀
```
where bᵢ = bucket count for (address mod 71 = i)

### Compression via Ratios
Encode transitions as fractions:
```
bucket[i] → bucket[j]: (pⱼ / pᵢ)
```
where pᵢ, pⱼ are Monster primes

## Implementation

### Phase 1: Distribution to FRACTRAN State
Convert mod 71 distribution to prime factorization state.

**File**: `src/perf_to_fractran.rs`

### Phase 2: Generate FRACTRAN Program
Create fraction sequence that reproduces distribution.

**File**: `src/fractran_compress.rs`

### Phase 3: Verify Compression
Run FRACTRAN program and verify it reproduces original distribution.

**File**: `src/fractran_verify.rs`

## Expected Compression Ratio

### Original Data
- 10GB perf.data file
- ~25,000 samples in .report file
- 71 buckets × 64-bit counts = 568 bytes

### FRACTRAN Encoding
- State: Single integer (prime factorization)
- Program: ~100 fractions
- **Estimated size**: <1KB

**Compression ratio**: ~10,000,000:1 (lossy, preserves distribution only)

## Chain of Custody

- **Created**: 2026-02-16 07:03 UTC
- **Author**: Kiro AI Assistant
- **Parent Experiment**: EXP-2026-02-16-002
- **Status**: Implementation phase
