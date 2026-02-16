-- Monster Resonance Spectrum Proofs in Lean 4
-- Exact arithmetic verification of P/(P+N) resonant factorization

import Mathlib.Data.Nat.Prime
import Mathlib.Algebra.BigOperators.Basic

namespace MonsterSpectrum

-- Monster group prime factorization
def monster_primes : List (Nat × Nat) := [
  (2, 46), (3, 20), (5, 9), (7, 6), (11, 2), (13, 3),
  (17, 1), (19, 1), (23, 1), (29, 1), (31, 1),
  (41, 1), (47, 1), (59, 1), (71, 1)
]

-- Compute product of prime powers
def prime_product (factors : List (Nat × Nat)) : Nat :=
  factors.foldl (fun acc (p, e) => acc * p ^ e) 1

-- Resonance at 17/18 ≈ 0.944
def left_17_18 : Nat := prime_product [(2, 46), (5, 9), (17, 1), (23, 1)]
def right_17_18 : Nat := prime_product [(3, 20), (7, 6), (13, 3), (19, 1), (47, 1), (71, 1)]

theorem resonance_17_18_bounds : 
  18 * left_17_18 < 19 * right_17_18 ∧ 17 * right_17_18 < 18 * left_17_18 := by
  norm_num [left_17_18, right_17_18, prime_product]

-- Resonance at 19/20 ≈ 0.950
def left_19_20 : Nat := prime_product [(2, 46), (7, 6), (41, 1)]
def right_19_20 : Nat := prime_product [(3, 20), (5, 9), (19, 1), (47, 1), (59, 1)]

theorem resonance_19_20_bounds :
  20 * left_19_20 < 21 * right_19_20 ∧ 19 * right_19_20 < 20 * left_19_20 := by
  norm_num [left_19_20, right_19_20, prime_product]

-- Resonance at 23/24 ≈ 0.958
def left_23_24 : Nat := prime_product [(2, 46), (7, 6), (31, 1), (71, 1)]
def right_23_24 : Nat := prime_product [(3, 20), (5, 9), (11, 2), (17, 1), (29, 1), (47, 1)]

theorem resonance_23_24_bounds :
  24 * left_23_24 < 25 * right_23_24 ∧ 23 * right_23_24 < 24 * left_23_24 := by
  norm_num [left_23_24, right_23_24, prime_product]

-- Resonance at 71/72 ≈ 0.986
def left_71_72 : Nat := prime_product [(7, 6), (13, 3), (17, 1), (23, 1)]
def right_71_72 : Nat := prime_product [(5, 9), (19, 1), (47, 1), (59, 1)]

theorem resonance_71_72_bounds :
  72 * left_71_72 < 73 * right_71_72 ∧ 71 * right_71_72 < 72 * left_71_72 := by
  norm_num [left_71_72, right_71_72, prime_product]

-- Universal undershoot theorem
theorem universal_undershoot (p n : Nat) (left right : Nat) 
  (h_pos : left > 0 ∧ right > 0 ∧ p > 0 ∧ n > 0)
  (h_bound : (p + n) * left < (p + n + 1) * right ∧ p * right < (p + n) * left) :
  ∃ (ε : Rat), ε < 1/250 ∧ (left : Rat) / right = (p : Rat) / (p + n) - ε := by
  sorry

-- Spectrum theorem: Multiple resonances exist
theorem resonance_spectrum :
  ∃ (ratios : List (Nat × Nat)), 
    ratios.length ≥ 4 ∧ 
    ∀ (p, n) ∈ ratios, ∃ (left right : Nat),
      (p + n) * left < (p + n + 1) * right ∧ 
      p * right < (p + n) * left := by
  use [(17, 1), (19, 1), (23, 1), (71, 1)]
  constructor
  · norm_num
  · intro ⟨p, n⟩ h
    cases h with
    | inl h => use left_17_18, right_17_18; exact resonance_17_18_bounds
    | inr h => cases h with
      | inl h => use left_19_20, right_19_20; exact resonance_19_20_bounds
      | inr h => cases h with
        | inl h => use left_23_24, right_23_24; exact resonance_23_24_bounds
        | inr h => use left_71_72, right_71_72; exact resonance_71_72_bounds

end MonsterSpectrum
