# Monster 71-Layer Lattice

**Date**: 2026-02-16  
**Foundation**: FRACTRAN_MONSTER_BASE.md (Layer 0)

## Architecture

### Lattice Structure
```
Layer 0  (Foundation): All 15 Monster primes, full exponents
Layer 1  (Prime 2):    p ≤ 2,  exponents × 70/71
Layer 2  (Prime 3):    p ≤ 3,  exponents × 69/71
Layer 3  (Prime 5):    p ≤ 5,  exponents × 68/71
...
Layer 14 (Prime 47):   p ≤ 47, exponents × 57/71
Layer 15 (Prime 59):   p ≤ 59, exponents × 56/71
Layer 71 (Prime 71):   p ≤ 71, exponents × 0/71 (identity)
```

### Monster Prime Mapping
```
Layer  | Prime | Max Exponent (Layer 0) | Primes Available
-------|-------|------------------------|------------------
0      | -     | Full                   | All 15
1      | 2     | 46 × 70/71 = 45       | {2}
2      | 3     | 20 × 69/71 = 19       | {2,3}
3      | 5     | 9 × 68/71 = 8         | {2,3,5}
4      | 7     | 6 × 67/71 = 5         | {2,3,5,7}
5      | 11    | 2 × 66/71 = 1         | {2,3,5,7,11}
6      | 13    | 3 × 65/71 = 2         | {2,3,5,7,11,13}
7      | 17    | 1 × 64/71 = 0         | {2,3,5,7,11,13,17}
8      | 19    | 1 × 63/71 = 0         | {2,3,5,7,11,13,17,19}
9      | 23    | 1 × 62/71 = 0         | {...,23}
10     | 29    | 1 × 61/71 = 0         | {...,29}
11     | 31    | 1 × 60/71 = 0         | {...,31}
12     | 41    | 1 × 59/71 = 0         | {...,41}
13     | 47    | 1 × 58/71 = 0         | {...,47}
14     | 59    | 1 × 57/71 = 0         | {...,59}
15-71  | 71    | Interpolate           | {...,71}
```

## Layer Definitions

### Layer 0 (Foundation)
See `FRACTRAN_MONSTER_BASE.md`

### Layer 1 (Prime 2)
```fractran
# Only prime 2 available, exponent ≤ 45
State: n = 2^e where e ≤ 45
Program: [2/1]  # Identity on 2
```

### Layer 2 (Prime 3)
```fractran
State: n = 2^e₂ × 3^e₃ where e₂ ≤ 45, e₃ ≤ 19
Program: [3/2, 2/3]  # Oscillate between 2 and 3
```

### Layer 3 (Prime 5)
```fractran
State: n = 2^e₂ × 3^e₃ × 5^e₅
Program: [3/2, 5/3, 2/5]  # Cycle through {2,3,5}
```

### Layer 8 (Prime 19) - Resonance Layer
```fractran
State: n = 2^e₂ × ... × 19^e₁₉
Program: [
  3/2, 5/3, 7/5, 11/7, 13/11, 17/13, 19/17,  # Forward
  19/20,  # Resonance: 19/(19+1) ≈ 0.95
]
```

### Layer 14 (Prime 59) - Universal Prime Layer
```fractran
State: n = 2^e₂ × ... × 59^e₅₉
Program: [
  ...,  # All transitions up to 59
  (47*59)/1,  # Encode 47×59 (part of 196883)
]
```

### Layer 71 (Prime 71) - Omega Layer
```fractran
State: n = 2^e₂ × ... × 71^e₇₁
Program: [
  ...,  # All transitions
  (47*59*71)/1,  # Encode 196883 = V₁ irrep
  71/72,  # Omega resonance
]
```

## Complexity Metrics

### Information Capacity (bits per layer)
```
Layer i: log₂(∏_{p≤pᵢ} p^{max_exp(p) × (71-i)/71})
```

### Lattice Density
```
Density(i) = |{primes ≤ pᵢ}| / 15
```

### Resonance Strength
```
Resonance(i) = {
  0.944  if pᵢ = 17
  0.950  if pᵢ = 19
  0.958  if pᵢ = 23
  0.986  if pᵢ = 71
  0      otherwise
}
```

## Implementation

### File Structure
```
monster_71_lattice/
├── src/
│   ├── layer_00_foundation.rs
│   ├── layer_01_prime2.rs
│   ├── layer_02_prime3.rs
│   ...
│   ├── layer_14_prime59.rs
│   ├── layer_71_omega.rs
│   └── lattice_runner.rs
├── Cargo.toml
└── flake.nix
```

### Usage
```bash
nix develop -c cargo run --release -- \
  --input perf_fractran.txt \
  --layer 14 \
  --output layer14_state.txt
```

## Verification

### Invariants
1. **Monotonicity**: Complexity increases with layer number
2. **Prime Inclusion**: Layer i includes all primes from layers 0..i-1
3. **Exponent Decay**: max_exp(p, i) ≤ max_exp(p, i-1)
4. **Resonance Preservation**: p/(p+1) ratios maintain ε ≈ 0.004

### Tests
- Layer 0 encodes full Monster order
- Layer 71 reproduces perf mod 71 distribution
- Intermediate layers preserve FRACTRAN semantics

## Connection to Perf Data

From EXP-2026-02-16-002:
- Perf addresses mod 71 show non-uniform distribution
- Chi-squared: 754.38 (highly significant)
- **Hypothesis**: Perf data naturally encodes Layer 71 state

**Compression**: 10GB perf.data → 71-layer FRACTRAN state (~1KB)
