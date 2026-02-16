// Layer 0: FRACTRAN Foundation
// Base layer with all 15 Monster primes

fn main() {
    println!("Layer 0: FRACTRAN Monster Foundation\n");
    
    // Monster primes with max exponents
    let monster = [
        (2, 46), (3, 20), (5, 9), (7, 6), (11, 2), (13, 3),
        (17, 1), (19, 1), (23, 1), (29, 1), (31, 1),
        (41, 1), (47, 1), (59, 1), (71, 1),
    ];
    
    println!("Monster Prime Structure:");
    for (p, e) in &monster {
        println!("  {}^{}", p, e);
    }
    
    // Base FRACTRAN program
    let program = vec![
        (3, 2), (5, 3), (7, 5), (11, 7), (13, 11),
        (17, 13), (19, 17), (23, 19), (29, 23), (31, 29),
        (41, 31), (47, 41), (59, 47), (71, 59),
    ];
    
    println!("\nBase FRACTRAN Program (increment operations):");
    for (num, den) in &program {
        println!("  {}/{}", num, den);
    }
    
    // Resonance fractions
    let resonance = vec![
        (17, 18), (19, 20), (23, 24), (71, 72),
    ];
    
    println!("\nResonance Operations:");
    for (num, den) in &resonance {
        let ratio = *num as f64 / *den as f64;
        let epsilon = 1.0 - ratio;
        println!("  {}/{} = {:.6} (ε = {:.6})", num, den, ratio, epsilon);
    }
    
    // 196883 encoding
    let v1 = 47u64 * 59 * 71;
    println!("\n196883 Connection:");
    println!("  47 × 59 × 71 = {}", v1);
    println!("  V₁ irrep dimension (smallest non-trivial)");
    
    // Test: Run FRACTRAN on initial state
    let mut state = 2u64; // Start with 2^1
    println!("\nFRACTRAN Execution (10 steps from state = 2):");
    
    for step in 0..10 {
        print!("  Step {}: {} = ", step, state);
        
        // Factor state
        let mut n = state;
        let mut factors = Vec::new();
        for (p, _) in &monster {
            let mut exp = 0;
            while n % p == 0 {
                n /= p;
                exp += 1;
            }
            if exp > 0 {
                factors.push(format!("{}^{}", p, exp));
            }
        }
        println!("{}", factors.join(" × "));
        
        // Apply first matching fraction
        let mut applied = false;
        for (num, den) in &program {
            if state % den == 0 {
                state = state / den * num;
                applied = true;
                break;
            }
        }
        
        if !applied {
            println!("  (halted - no fraction applies)");
            break;
        }
    }
    
    println!("\nLayer 0 complete. State space: 2^46 × 3^20 × ... × 71^1");
}
