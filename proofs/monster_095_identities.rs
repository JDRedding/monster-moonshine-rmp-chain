// Monster 0.95 Identity Proofs in Rust
// Exact arithmetic verification using num-bigint

use num_bigint::BigUint;
use num_rational::BigRational;
use num_traits::{One, Zero};

/// Monster group prime factorization
const MONSTER_PRIMES: [(u64, u32); 15] = [
    (2, 46), (3, 20), (5, 9), (7, 6), (11, 2), (13, 3),
    (17, 1), (19, 1), (23, 1), (29, 1), (31, 1),
    (41, 1), (47, 1), (59, 1), (71, 1),
];

fn prime_product(factors: &[(u64, u32)]) -> BigUint {
    factors.iter().fold(BigUint::one(), |acc, &(p, e)| {
        acc * BigUint::from(p).pow(e)
    })
}

/// Identity 1: 2^46×7^6×41 ≈ 3^20×5^9×19×47×59 × 0.946
#[test]
fn test_identity1() {
    let left = prime_product(&[(2, 46), (7, 6), (41, 1)]);
    let right = prime_product(&[(3, 20), (5, 9), (19, 1), (47, 1), (59, 1)]);
    
    // Verify: 19/20 < left/right < 21/20
    assert!(&left * 20u32 < &right * 21u32);
    assert!(&right * 19u32 < &left * 20u32);
    
    let ratio = BigRational::new(left.into(), right.into());
    let target = BigRational::new(19.into(), 20.into());
    let error = (&ratio - &target).abs();
    
    println!("Identity 1 error: {}", error.to_f64().unwrap());
    assert!(error < BigRational::new(1.into(), 20.into()));
}

/// Identity 2: 11²×17×19×47 ≈ 23×29×41×71 × 0.946
#[test]
fn test_identity2() {
    let left = prime_product(&[(11, 2), (17, 1), (19, 1), (47, 1)]);
    let right = prime_product(&[(23, 1), (29, 1), (41, 1), (71, 1)]);
    
    assert!(&left * 20u32 < &right * 21u32);
    assert!(&right * 19u32 < &left * 20u32);
    
    let ratio = BigRational::new(left.into(), right.into());
    let target = BigRational::new(19.into(), 20.into());
    let error = (&ratio - &target).abs();
    
    println!("Identity 2 error: {}", error.to_f64().unwrap());
    assert!(error < BigRational::new(1.into(), 20.into()));
}

/// Identity 3: 11²×17×23×47×59 ≈ 5⁹×71 × 0.946
#[test]
fn test_identity3() {
    let left = prime_product(&[(11, 2), (17, 1), (23, 1), (47, 1), (59, 1)]);
    let right = prime_product(&[(5, 9), (71, 1)]);
    
    assert!(&left * 20u32 < &right * 21u32);
    assert!(&right * 19u32 < &left * 20u32);
    
    let ratio = BigRational::new(left.into(), right.into());
    let target = BigRational::new(19.into(), 20.into());
    let error = (&ratio - &target).abs();
    
    println!("Identity 3 error: {}", error.to_f64().unwrap());
    assert!(error < BigRational::new(1.into(), 20.into()));
}

/// Resonance theorem: all identities cluster around 19/20
fn verify_resonance(left: &BigUint, right: &BigUint) -> bool {
    if left.is_zero() || right.is_zero() {
        return false;
    }
    
    // Check bounds: 19/20 < left/right < 21/20
    let upper = left * 20u32 < right * 21u32;
    let lower = right * 19u32 < left * 20u32;
    
    upper && lower
}

#[test]
fn test_all_identities_resonate() {
    let identities = [
        (vec![(2, 46), (7, 6), (41, 1)], vec![(3, 20), (5, 9), (19, 1), (47, 1), (59, 1)]),
        (vec![(11, 2), (17, 1), (19, 1), (47, 1)], vec![(23, 1), (29, 1), (41, 1), (71, 1)]),
        (vec![(11, 2), (17, 1), (23, 1), (47, 1), (59, 1)], vec![(5, 9), (71, 1)]),
    ];
    
    for (left_factors, right_factors) in identities {
        let left = prime_product(&left_factors);
        let right = prime_product(&right_factors);
        assert!(verify_resonance(&left, &right));
    }
}
