# Monster 0.95 Identities - Quick Reference

## Run the Code

```bash
cd /home/mdupont/experiments/monster/monster_095_code
nix develop -c rustc src/multibase_simple.rs -o multibase --edition 2021 -C opt-level=3
./multibase
```

## Key Finding

**Base-invariant resonance at 19/20 ≈ 0.95**

The Monster group's prime factorization exhibits metrically rigid geometry - the same 8 tightest identities appear in identical order regardless of logarithmic base choice.

## Top Identity

```
2^46×7^6×41 = 3^20×5^9×19×47×59 × 0.946005
```

Error: ~5.4×10^-3 (relative to 0.95)

## See Also

- `MONSTER_095_IDENTITIES.md` - Full analysis
- `monster_095_code/` - Rust implementation
- `monster_identities3.org` - Predictions
- `monster_identities4.org` - Multi-base theory
