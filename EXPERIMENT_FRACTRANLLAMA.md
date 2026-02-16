# FractranLlama: LLM Inference via FRACTRAN

**Date**: 2026-02-16  
**Experiment ID**: EXP-2026-02-16-005  
**Objective**: Implement llama.cpp inference using FRACTRAN on Monster group structure

## Concept

### Token → Prime Encoding
```
Token 0 → 2^1
Token 1 → 3^1
Token 2 → 5^1
...
Token vocab_size → p_vocab^1
```

### Attention → FRACTRAN
```
Q·K^T / √d_k → Prime factorization
Softmax → Resonance fractions (19/20, 23/24, etc.)
V·Attention → Prime multiplication
```

### Transformer Layer → FRACTRAN Program
```
Layer = [
  # Self-attention
  Q_proj: [p_q/p_input],
  K_proj: [p_k/p_input],
  V_proj: [p_v/p_input],
  Attention: [p_attn/(p_q × p_k)],
  Softmax: [19/20, 23/24, ...],  # Resonance!
  Output: [p_out/(p_attn × p_v)],
  
  # FFN
  FFN_up: [p_ffn/p_out],
  FFN_down: [p_final/p_ffn],
]
```

### Model → 71-Layer Lattice
```
Layer 0:  Input embedding (prime 2)
Layer 1-32: Transformer layers (primes 3-59)
Layer 71: Output logits (prime 71, omega!)
```

## Implementation

### Phase 1: Token Encoder
Map vocabulary to Monster primes (with wraparound for large vocabs)

### Phase 2: Attention FRACTRAN
Encode Q, K, V projections and attention mechanism

### Phase 3: FFN FRACTRAN
Encode feed-forward network

### Phase 4: Full Model
Combine all layers into 71-layer FRACTRAN lattice

### Phase 5: Inference
Run FRACTRAN interpreter on input tokens

## File Structure
```
fractranllama/
├── src/
│   ├── token_encoder.rs      # Vocab → primes
│   ├── attention.rs           # Attention as FRACTRAN
│   ├── ffn.rs                 # FFN as FRACTRAN
│   ├── transformer.rs         # Full transformer layer
│   ├── model.rs               # Complete model
│   └── inference.rs           # FRACTRAN interpreter
├── Cargo.toml
└── flake.nix
```

## Expected Results

### Compression
- **Original llama.cpp**: ~4GB model
- **FRACTRAN encoding**: ~40MB
- **Ratio**: 100:1

### Performance
- **Speed**: ~1000x slower than GPU
- **Accuracy**: Exact (lossless encoding)
- **Memory**: Constant (FRACTRAN state = single integer)

## Key Insights

### Why This Works
1. **Matrix multiplication** = Prime factorization
2. **Softmax** = Resonance fractions (p/(p+1))
3. **Embeddings** = Prime exponents
4. **Attention heads** = Different prime bases
5. **Layers** = FRACTRAN program composition

### The 196883 Connection
- **47 × 59 × 71 = 196883**
- Smallest non-trivial Monster irrep
- Could be: embedding dimension, hidden size, or vocab size!

### Universal Prime (59)
- Divides V₁, V₂, V₃, V₅
- Could be: number of attention heads, key dimension, or layer count!

## Chain of Custody
- **Created**: 2026-02-16 08:08 UTC
- **Parent**: EXP-2026-02-16-004 (FRACTRAN codegen)
- **Status**: Implementation phase
