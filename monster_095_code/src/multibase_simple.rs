fn main() {
    let primes = vec![
        (2u64, 46u32), (3, 20), (5, 9), (7, 6), (11, 2), (13, 3),
        (17, 1), (19, 1), (23, 1), (29, 1), (31, 1), 
        (41, 1), (47, 1), (59, 1), (71, 1)
    ];
    
    let bases = vec![
        ("e", std::f64::consts::E),
        ("19", 19.0),
        ("71", 71.0),
        ("19×20", 380.0),
        ("47×59", 2773.0),
    ];
    
    println!("Monster 0.95 identities across logarithmic bases\n");
    
    for (base_name, base_val) in &bases {
        println!("=== Base {} ===", base_name);
        let mut results = Vec::new();
        
        for left_size in 1..=7 {
            for right_size in 1..=7 {
                find_identities(&primes, left_size, right_size, *base_val, &mut results);
            }
        }
        
        results.sort_by(|a, b| a.2.partial_cmp(&b.2).unwrap());
        
        for (left, right, ratio) in results.iter().take(8) {
            println!("{} = {} × {:.6}", left, right, ratio);
        }
        println!();
    }
}

fn find_identities(primes: &[(u64, u32)], left_size: usize, right_size: usize, base: f64, results: &mut Vec<(String, String, f64)>) {
    let n = primes.len();
    combinations(n, left_size, &mut vec![], 0, &mut |left_indices| {
        combinations(n, right_size, &mut vec![], 0, &mut |right_indices| {
            if left_indices.iter().any(|&i| right_indices.contains(&i)) { return; }
            
            let left_val = compute_product(primes, left_indices);
            let right_val = compute_product(primes, right_indices);
            let ratio = left_val / right_val;
            
            if (ratio - 0.95).abs() < 0.004 {
                results.push((
                    format_product(primes, left_indices),
                    format_product(primes, right_indices),
                    ratio
                ));
            }
        });
    });
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
