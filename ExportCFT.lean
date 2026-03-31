import Lean
open Lean

def sspPrimes : Array Nat := #[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71]

def torusCoord (n : Name) : Array Nat := sspPrimes.map fun p => n.hash.toNat % p

def depCount (env : Environment) (n : Name) : Nat :=
  match env.find? n with
  | some ci =>
    let t := ci.type.foldConsts (NameSet.empty) fun n s => s.insert n
    let v := match ci with
      | .defnInfo v => v.value.foldConsts (NameSet.empty) fun n s => s.insert n
      | .thmInfo v  => v.value.foldConsts (NameSet.empty) fun n s => s.insert n
      | _ => {}
    (t.union v).size
  | none => 0

def classify (env : Environment) (n : Name) : String :=
  match env.find? n with
  | some (.axiomInfo _) => "axiom" | some (.thmInfo _) => "theorem"
  | some (.defnInfo v) => if v.value.isConst then "alias" else "def"
  | some (.inductInfo _) => "inductive" | some (.ctorInfo _) => "constructor"
  | some (.recInfo _) => "recursor" | some (.opaqueInfo _) => "opaque"
  | some (.quotInfo _) => "quot" | none => "unknown"

def escJson (s : String) : String :=
  s.foldl (fun acc c => acc ++ match c with
    | '\\' => "\\\\"
    | '"' => "\\\""
    | '\n' => "\\n"
    | '\t' => "\\t"
    | c => c.toString) ""

def main : IO Unit := do
  let env ← importModules #[{ module := `Lean }] {} 0
  let mut first := true
  IO.print "["
  for (n, _) in env.constants.map₁.toList do
    let c := torusCoord n
    let d := depCount env n
    let k := classify env n
    let dim := Float.log2 (d.toFloat + 1.0)
    let name := escJson (toString n)
    if !first then IO.print ","
    IO.print s!"\{\"n\":\"{name}\",\"k\":\"{k}\",\"d\":{d},\"h\":{dim},\"o\":\"{c[14]!},{c[12]!},{c[11]!}\",\"t\":[{",".intercalate (c.toList.map toString)}]}"
    first := false
  IO.println "]"
