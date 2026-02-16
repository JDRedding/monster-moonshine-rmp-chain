# FRACTRAN Program Generation from Binaries

**Date**: 2026-02-16  
**Experiment ID**: EXP-2026-02-16-004  
**Objective**: Generate FRACTRAN programs for instructions, functions, and binaries

## Concept

### Instruction → FRACTRAN
Each CPU instruction maps to a FRACTRAN fraction:
```
mov rax, rbx  →  3/2   (prime 2 → prime 3)
add rax, rcx  →  15/2  (2^1 × 3^1 → 3^1 × 5^1)
jmp label     →  p_target/p_current
```

### Function → FRACTRAN Program
Function = sequence of FRACTRAN fractions:
```
fn foo() {
    mov rax, rbx    [3/2]
    add rax, 1      [6/3]
    ret             [2/3]
}
→ FRACTRAN: [3/2, 6/3, 2/3]
```

### Binary → FRACTRAN Lattice
Binary = collection of functions at different layers:
```
Layer 0:  All functions (full program)
Layer i:  Functions using primes ≤ p_i
Layer 71: Entry point only
```

## Implementation Strategy

### Phase 1: Instruction Encoding
Map x86-64 instructions to FRACTRAN fractions using:
- **Registers**: 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71
- **Operations**: Multiply/divide by prime products
- **Control flow**: Conditional fractions

### Phase 2: Function Extraction
From perf data:
1. Parse symbol names
2. Group instructions by function
3. Generate FRACTRAN program per function
4. Assign layer based on complexity

### Phase 3: Binary Reconstruction
1. Collect all function FRACTRAN programs
2. Build 71-layer lattice
3. Compress using Monster prime structure
4. Verify execution equivalence

## File Structure
```
fractran_codegen/
├── src/
│   ├── instruction_encoder.rs   # x86-64 → FRACTRAN
│   ├── function_extractor.rs    # Parse functions from perf
│   ├── binary_lattice.rs        # Build 71-layer binary
│   └── verifier.rs              # Verify equivalence
├── Cargo.toml
└── flake.nix
```

## Expected Results

### Compression
- **Original binary**: 10 MB
- **FRACTRAN encoding**: ~100 KB
- **Ratio**: 100:1

### Execution
- FRACTRAN interpreter runs encoded program
- Produces same output as original binary
- Performance: ~1000x slower (acceptable for proof-of-concept)

## Chain of Custody
- **Created**: 2026-02-16 08:03 UTC
- **Parent**: EXP-2026-02-16-003 (FRACTRAN compression)
- **Status**: Design phase
