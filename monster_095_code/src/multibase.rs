use num_bigint::BigUint;
use num_traits::{One, ToPrimitive};

fn main() {
    let primes = vec![
        (2u64, 46u32), (3, 20), (5, 9), (7, 6), (11, 2), (13, 3),
        (17, 1), (19, 1), (23, 1), (29, 1), (31, 1), 
        (41, 1), (47, 1), (59, 1), (71, 1)
    ];
    
    let bases = vec![
        ("2", 2.0),
        ("3", 3.0),
        ("19", 19.0),
        ("71", 71.0),
        ("2^46", 2.0_f64.powi(46)),
        ("3^20", 3.0_f64.powi(20)),
        ("47×59", 47.0 * 59.0),
        ("19×20", 19.0 * 20.0),
    ];
    
    println!("Monster identities in different logarithmic bases\n");
    
    for (base_name, base_val) in &bases {
        println!("=== Base {} ===", base_name);
        let mut results = Vec::new();
        
        for left_size in 1..=8 {
            for right_size in 1..=8 {
                find_identities(&primes, left_size, right_size, *base_val, &mut results);
            }
        }
        
        results.sort_by(|a, b| a.3.partial_cmp(&b.3).unwrap());
        
        for (left, right, ratio, delta) in results.iter().take(10) {
            println!("{} = {} × {:.6} (δ={:.6})", left, right, ratio, delta);
        }
        println!();
    }
}

fn find_identities(primes: &[(u64, u32)], left_size: usize, right_size: usize, base: f64, results: &mut Vec<(String, String, f64, f64)>) {
    let n = primes.len();
    combinations(n, left_size, &mut vec![], 0, &mut |left_indices| {
        combinations(n, right_size, &mut vec![], 0, &mut |right_indices| {
            if left_indices.iter().any(|&i| right_indices.contains(&i)) { return; }
            
            let left_log = log_product(primes, left_indices, base);
            let right_log = log_product(primes, right_indices, base);
            let delta = left_log - right_log;
            
            if (delta + (20.0/19.0_f64).ln() / base.ln()).abs() < 0.05 {
                let left_val = compute_product(primes, left_indices);
                let right_val = compute_product(primes, right_indices);
                let ratio = left_val / right_val;
                
                results.push((
                    format_product(primes, left_indices),
                    format_product(primes, right_indices),
                    ratio,
                    delta
                ));
            }
        });
    });
}

fn log_product(primes: &[(u64, u32)], indices: &[usize], base: f64) -> f64 {
    indices.iter().map(|&i| {
        let (p, e) = primes[i];
        (p as f64).powi(e as i32).ln() / base.ln()
    }).sum()
}

fn compute_product(primes: &[(u64, u32)], indices: &[usize]) -> f64 {
    indices.iter().map(|&i| {
        let (p, e) = primes[i];
        (p as f64).powi(e as i32)
    }).product()
}

fn format_product(primes: &[(u64, u32)], indices: &[usize]) -> String {
    indices.iter().map(|&i| {
        let (p, e) = primes[i];
        if e == 1 { format!("{}", p) } else { format!("{}^{}", p, e) }
    }).collect::<Vec<_>>().join("×")
}

fn combinations<F>(n: usize, k: usize, current: &mut Vec<usize>, start: usize, callback: &mut F)
where F: FnMut(&[usize]) {
    if current.len() == k {
        callback(current);
        return;
    }
    for i in start..n {
        current.push(i);
        combinations(n, k, current, i + 1, callback);
        current.pop();
    }
}
