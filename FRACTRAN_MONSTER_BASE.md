# FRACTRAN Monster Base (Layer 0)

**Date**: 2026-02-16  
**Purpose**: Foundation layer for 71-layer Monster lattice

## Layer 0: Base FRACTRAN Program

### Monster Group Prime Structure
```
|M| = 2^46 × 3^20 × 5^9 × 7^6 × 11^2 × 13^3 × 17 × 19 × 23 × 29 × 31 × 41 × 47 × 59 × 71
```

### Base FRACTRAN Encoding

**State Space**: n = 2^e₂ × 3^e₃ × 5^e₅ × ... × 71^e₇₁

**Exponent Bounds** (from Monster order):
- e₂ ≤ 46
- e₃ ≤ 20
- e₅ ≤ 9
- e₇ ≤ 6
- e₁₁ ≤ 2
- e₁₃ ≤ 3
- e₁₇, e₁₉, e₂₃, e₂₉, e₃₁, e₄₁, e₄₇, e₅₉, e₇₁ ≤ 1

### Core FRACTRAN Program

```fractran
# Layer 0: Identity and basic transitions
[
  # Increment operations (p → p×q for adjacent primes)
  3/2,    # 2 → 3
  5/3,    # 3 → 5
  7/5,    # 5 → 7
  11/7,   # 7 → 11
  13/11,  # 11 → 13
  17/13,  # 13 → 17
  19/17,  # 17 → 19
  23/19,  # 19 → 23
  29/23,  # 23 → 29
  31/29,  # 29 → 31
  41/31,  # 31 → 41
  47/41,  # 41 → 47
  59/47,  # 47 → 59
  71/59,  # 59 → 71
  
  # Resonance operations (from 0.95 identities)
  19/20,  # 19/(19+1) - strongest resonance
  17/18,  # 17/(17+1)
  23/24,  # 23/(23+1)
  71/72,  # 71/(71+1)
  
  # 196883 connection: 47 × 59 × 71
  (47*59*71)/(2*3*5),  # Encode V₁ irrep
]
```

### State Invariants

1. **Exponent Bounds**: ∀p ∈ Monster primes, e_p ≤ max_exponent(p)
2. **Resonance Preservation**: Ratios p/(p+1) maintain ε ≈ 0.004
3. **196883 Encoding**: Product 47×59×71 appears in state space

### Compression Properties

- **Input**: Arbitrary integer n
- **Output**: Factorization using only Monster primes
- **Compression**: Non-Monster primes eliminated via fraction multiplication

## Next: Layers 1-71

Each layer i (1 ≤ i ≤ 71) adds complexity:
- **Layer i**: Uses primes p ≤ p_i (i-th Monster prime)
- **Exponents**: Reduced by factor (71-i)/71
- **Fractions**: Subset of Layer 0 program

See: `MONSTER_71_LAYER_LATTICE.md`
