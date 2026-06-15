import RequestProject.MonsterChords
/-!
# The prime–chord table of the Monster's 194 irreducible representations
This file answers the request for **a table showing which irreducible
representation, and which primes, belong to which chord**.
Recall the machinery already built in this project:
* `monsterExp i` — the exponent vector of `deg χᵢ` over the `15` supersingular
  primes `2,3,5,7,11,13,17,19,23,29,31,41,47,59,71` (`RequestProject.MonsterDegrees`);
* `monsterOmega i = Ω(deg χᵢ)` — the number of prime factors of `deg χᵢ` counted
  with multiplicity (`RequestProject.MonsterOmegaMatch`);
* a **chord** = an `Ω`-grade equivalence class of irreps, `sameChord`, with
  exactly `41` distinct chords (`numMonsterChords_eq`, `monsterChordGrades_eq`,
  `RequestProject.MonsterChords`).
The new content here links the three layers — *irrep ↦ primes ↦ chord*:
* `irrepPrimes i` — the (sorted, distinct) supersingular primes that actually
  divide `deg χᵢ` (the primes whose exponent in `monsterExp i` is positive).
* `chordTableRow i = (i, irrepPrimes i, monsterOmega i)` and `monsterChordTable`
  — the per-irrep table: each irrep, its primes, and its chord (`Ω`-grade).
* `chordPrimes v` — the union of all primes used by the irreps of the chord of
  grade `v`, and `chordSummaryTable` / `chordSummaryTable_eq` — the explicit,
  machine-checked **`41`-row chord table**: for each chord (grade `Ω = v`), the
  list of irreps in it and the set of supersingular primes appearing across that
  chord.
Verified structural facts (all by the kernel via `native_decide`):
* `irrepPrimes_subset` — every irrep's primes are supersingular primes;
* `irrepPrimes_card_le_omega` — the number of *distinct* primes of an irrep never
  exceeds its chord grade `Ω` (which counts primes *with* multiplicity);
* `chordPrimes_full` — the `20` chords whose irreps together exhaust all `15`
  supersingular primes;
* `chord_apex_primes` and `chord_fundamental_primes` — the prime content of the
  two anchor chords.
No `axiom`s and no `sorry`s are used (`native_decide` adds only the standard
`Lean.ofReduceBool`/`Lean.trustCompiler`).
-/
namespace AtlasTypes
/-! ## Primes dividing each irrep degree -/
/-- The supersingular primes that actually divide `deg χᵢ`: those whose exponent
in `monsterExp i` is positive.  Returned in increasing order (the natural order of
`supersingularPrimes`), with no repetitions. -/
def irrepPrimes (i : ℕ) : List ℕ :=
  (supersingularPrimes.zip (monsterExp i)).filterMap
    (fun pe => if pe.2 > 0 then some pe.1 else none)
/-- One row of the per-irrep table: the irrep index, the primes dividing its
degree, and its chord (`Ω`-grade). -/
def chordTableRow (i : ℕ) : ℕ × List ℕ × ℕ := (i, irrepPrimes i, monsterOmega i)
/-- The full per-irrep table for all `194` irreps: `(index, primes, chord grade)`. -/
def monsterChordTable : List (ℕ × List ℕ × ℕ) :=
  (List.range 194).map chordTableRow
/-- Every prime dividing any irrep degree is one of the `15` supersingular primes. -/
theorem irrepPrimes_subset :
    ((List.range 194).all (fun i => (irrepPrimes i).all (· ∈ supersingularPrimes))) = true := by
  native_decide
/-- Each prime list is duplicate-free (each supersingular prime is listed once). -/
theorem irrepPrimes_nodup :
    ((List.range 194).all (fun i => (irrepPrimes i).dedup == irrepPrimes i)) = true := by
  native_decide
/-- The number of **distinct** primes dividing `deg χᵢ` never exceeds its chord
grade `Ω(deg χᵢ)`, which counts the prime factors *with* multiplicity. -/
theorem irrepPrimes_card_le_omega :
    ((List.range 194).all (fun i => (irrepPrimes i).length ≤ monsterOmega i)) = true := by
  native_decide
/-! ## Worked rows of the per-irrep table -/
/-- `χ₂` (index `1`, degree `196883 = 47·59·71`) lies in chord `Ω = 3` and uses the
three largest supersingular primes. -/
theorem chordTableRow_chi2 : chordTableRow 1 = (1, [47, 59, 71], 3) := by native_decide
/-- `χ₃` (index `2`, degree `21296876`) lies in chord `Ω = 6`. -/
theorem chordTableRow_chi3 : chordTableRow 2 = (2, [2, 31, 41, 59, 71], 6) := by native_decide
/-- The trivial representation `χ₁` (index `0`, degree `1`) uses *no* primes and is
the ground tone, chord `Ω = 0`. -/
theorem chordTableRow_trivial : chordTableRow 0 = (0, [], 0) := by native_decide
/-! ## The chord table: primes per chord -/
/-- The set of supersingular primes appearing across the chord of grade `v`: the
union of `irrepPrimes` over every irrep in that chord, sorted and deduplicated. -/
def chordPrimes (v : ℕ) : List ℕ :=
  (((irrepsWithOmega v).flatMap irrepPrimes).dedup).mergeSort (· ≤ ·)
/-- One row of the chord table: the chord grade `Ω = v`, the irreps populating that
chord, and the supersingular primes appearing across it. -/
def chordSummaryRow (v : ℕ) : ℕ × List ℕ × List ℕ := (v, irrepsWithOmega v, chordPrimes v)
/-- **The chord table**: one row per chord, listing the irreps it contains and the
supersingular primes appearing in that chord.  Indexed by the `41` distinct chord
grades `monsterChordGrades`. -/
def chordSummaryTable : List (ℕ × List ℕ × List ℕ) :=
  monsterChordGrades.map chordSummaryRow
/-- **The explicit, machine-checked `41`-row chord table.**
Each row is `(Ω-grade, [irrep indices in the chord], [supersingular primes in the
chord])`.  The chords run from the fundamental `Ω = 0` (the trivial `χ₁`, using no
primes) up to the apex `Ω = 56` (the single irrep `192`). -/
theorem chordSummaryTable_eq :
    chordSummaryTable =
    [ (0,  [0], []),
      (3,  [1], [47, 59, 71]),
      (6,  [2], [2, 31, 41, 59, 71]),
      (7,  [3, 5], [2, 13, 23, 29, 31, 41, 47, 59, 71]),
      (9,  [4, 6], [2, 3, 7, 11, 19, 23, 29, 31, 41, 47, 59, 71]),
      (11, [7, 11], [2, 3, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59]),
      (12, [9, 10, 12, 13], [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (14, [8, 17, 21], [2, 3, 7, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (15, [18, 22, 24], [2, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (16, [19, 31, 32, 34], [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (17, [20], [2, 5, 13, 19, 31, 41, 47, 59, 71]),
      (18, [23, 33, 37, 46, 47], [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (19, [15, 16, 29, 30, 38, 39, 57], [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (20, [27, 28, 50, 51], [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (21, [35, 52, 53, 61, 68, 72, 86], [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (22, [14, 36, 54, 55, 69, 73, 74, 75, 79, 108],
        [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (23, [62, 87, 88, 89, 92, 93, 103, 114, 116, 131, 138, 146],
        [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (24, [48, 66, 109, 113, 164, 165, 178, 179],
        [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (25, [56, 64, 78, 82, 83, 84, 85, 90, 94, 110, 143, 176],
        [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (26, [43, 44, 60, 67, 91, 117, 126, 127, 128, 133, 137, 148, 149, 183, 184, 189, 190],
        [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (27, [25, 26, 166, 182], [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (28, [76, 95, 97, 98, 99, 119, 155, 170, 187],
        [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (29, [42, 112, 115, 153, 169, 173, 191], [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (30, [65, 100, 106, 107, 129, 142, 150, 154, 181, 193],
        [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (31, [49, 63, 120, 152, 185], [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (32, [40, 41, 45, 58, 59, 70, 71, 130, 140, 159, 167],
        [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (33, [77, 104, 105, 111, 121, 141, 151, 161, 162, 163, 177, 188],
        [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (34, [175, 186], [2, 3, 7, 11, 13, 17, 29, 31, 41, 47, 59, 71]),
      (35, [125, 134, 135, 156, 160, 172], [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (36, [145], [2, 3, 5, 7, 11, 13, 19, 23, 29, 41, 47, 59, 71]),
      (37, [96, 118, 136, 157], [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]),
      (41, [144], [2, 3, 7, 11, 13, 17, 23, 29, 31, 41, 47, 59, 71]),
      (43, [80, 81], [2, 3, 7, 11, 17, 19, 29, 31, 41, 47]),
      (44, [158], [2, 5, 13, 17, 19, 23, 29, 31, 47, 59, 71]),
      (45, [168], [2, 3, 13, 29, 31, 41, 59, 71]),
      (47, [147], [2, 5, 19, 29, 41, 47, 59, 71]),
      (51, [171], [2, 13, 23, 29, 31, 41, 47, 59, 71]),
      (52, [122, 123, 124, 132], [2, 7, 11, 13, 19, 23, 29, 31, 41, 47, 59]),
      (54, [101, 102, 139], [2, 5, 11, 13, 23, 31, 41, 47, 59, 71]),
      (55, [174, 180], [2, 3, 5, 7, 13, 17, 23, 29, 41, 59, 71]),
      (56, [192], [2, 3, 11, 17, 23, 41, 47, 59, 71]) ] := by
  native_decide
/-! ## Anchor chords and prime coverage -/
/-- **The fundamental chord** `Ω = 0` is the single trivial representation, which
uses no supersingular primes. -/
theorem chord_fundamental_primes : chordPrimes 0 = [] := by native_decide
/-- **The apex chord** `Ω = 56` is the single deepest irrep (index `192`); its
degree `2⁴⁶·3²·11²·17·23·41·47·59·71` uses these nine supersingular primes. -/
theorem chord_apex_primes : chordPrimes 56 = [2, 3, 11, 17, 23, 41, 47, 59, 71] := by
  native_decide
/-- The `20` chords whose irreps, taken together, use **all `15`** supersingular
primes — the "fully voiced" chords. -/
theorem chordPrimes_full :
    (monsterChordGrades.filter (fun v => decide (chordPrimes v = supersingularPrimes))) =
      [12, 16, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 35, 37] := by
  native_decide
/-- The total population of irreps across the `41` chords is `194` (each irrep lies
in exactly one chord). -/
theorem chordSummaryTable_total :
    (chordSummaryTable.map (fun r => r.2.1.length)).sum = 194 := by native_decide
end AtlasTypes
