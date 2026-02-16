use num_bigint::BigUint;
use num_traits::{One, ToPrimitive};

fn main() {
    let primes = vec![
        (2u64, 46u32), (3, 20), (5, 9), (7, 6), (11, 2), (13, 3),
        (17, 1), (19, 1), (23, 1), (29, 1), (31, 1), 
        (41, 1), (47, 1), (59, 1), (71, 1)
    ];
    
    let folds = vec![
        (0, 8080, 4, 8),
        (4, 1742, 4, 4),
        (8, 479, 3, 4),
        (11, 451, 3, 4),
        (14, 2875, 4, 4),
        (18, 8864, 4, 8),
        (22, 5990, 4, 8),
        (26, 496, 3, 6),
        (29, 1710, 4, 3),
        (33, 7570, 4, 8),
    ];
    
    println!("Folded Monster identities:\n");
    
    for (group_idx, (pos, seq, _digits, factors_removed)) in folds.iter().enumerate() {
        let left_indices: Vec<usize> = (0..15).filter(|&i| {
            let fold_val = (i + pos) % seq;
            fold_val < *factors_removed
        }).collect();
        
        let right_indices: Vec<usize> = (0..15).filter(|&i| !left_indices.contains(&i)).collect();
        
        if !left_indices.is_empty() && !right_indices.is_empty() {
            let left_val = compute_product_big(&primes, &left_indices);
            let right_val = compute_product_big(&primes, &right_indices);
            
            let left_str = format_product(&primes, &left_indices);
            let right_str = format_product(&primes, &right_indices);
            
            let ratio_f = left_val.to_f64().unwrap() / right_val.to_f64().unwrap();
            
            println!("Group {}: {} = {} × {:.6e}", group_idx + 1, left_str, right_str, ratio_f);
            println!("  Exact ratio: {} / {}", left_val, right_val);
            println!();
        }
    }
}

fn compute_product_big(primes: &[(u64, u32)], indices: &[usize]) -> BigUint {
    let mut result = BigUint::one();
    for &i in indices {
        let (p, e) = primes[i];
        let base = BigUint::from(p);
        result *= base.pow(e);
    }
    result
}

fn format_product(primes: &[(u64, u32)], indices: &[usize]) -> String {
    indices.iter().map(|&i| {
        let (p, e) = primes[i];
        if e == 1 { format!("{}", p) } else { format!("{}^{}", p, e) }
    }).collect::<Vec<_>>().join("×")
}
