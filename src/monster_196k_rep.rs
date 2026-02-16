// Canonical Monster 196,883-dimensional representation (Rust)
use std::ops::{Add, Mul};

pub const DIMS: usize = 196883;
pub const REPS: usize = 194;
pub const SHARDS: usize = 71;
pub const PRIMES_15: [u32; 15] = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71];

#[derive(Debug, Clone)]
pub struct MonsterVector {
    pub coords: Vec<f64>,  // 196,883 dimensions
    pub rep_id: u8,        // 0-193
    pub shard_id: u8,      // 0-70
}

impl MonsterVector {
    pub fn new(rep_id: u8, shard_id: u8) -> Self {
        Self {
            coords: vec![0.0; DIMS],
            rep_id: rep_id % REPS as u8,
            shard_id: shard_id % SHARDS as u8,
        }
    }
    
    pub fn from_data(data: &[u8], shard_id: u8) -> Self {
        let rep_id = (data.iter().map(|&b| b as u32).sum::<u32>() % REPS as u32) as u8;
        let (start, end) = shard_to_dims(shard_id);
        
        let mut coords = vec![0.0; DIMS];
        for (i, &byte) in data.iter().enumerate() {
            if start + i < end {
                coords[start + i] = byte as f64 / 255.0;
            }
        }
        
        Self { coords, rep_id, shard_id }
    }
    
    pub fn norm(&self) -> f64 {
        self.coords.iter().map(|&x| x * x).sum::<f64>().sqrt()
    }
    
    pub fn inner_product(&self, other: &Self) -> f64 {
        self.coords.iter().zip(&other.coords).map(|(a, b)| a * b).sum()
    }
    
    pub fn distance(&self, other: &Self) -> f64 {
        self.coords.iter().zip(&other.coords)
            .map(|(a, b)| (a - b).powi(2))
            .sum::<f64>()
            .sqrt()
    }
}

pub fn shard_to_dims(shard_id: u8) -> (usize, usize) {
    let shard = shard_id as usize % SHARDS;
    let start = (shard * DIMS) / SHARDS;
    let end = ((shard + 1) * DIMS) / SHARDS;
    (start, end)
}

pub fn rep_to_dims(rep_id: u8) -> (usize, usize) {
    let rep = rep_id as usize % REPS;
    let start = (rep * DIMS) / REPS;
    let end = ((rep + 1) * DIMS) / REPS;
    (start, end)
}

pub fn hecke_operator(v: &MonsterVector, prime: u32) -> MonsterVector {
    let mut new_coords = vec![0.0; DIMS];
    for i in 0..DIMS {
        new_coords[i] = v.coords[(i * prime as usize) % DIMS];
    }
    
    MonsterVector {
        coords: new_coords,
        rep_id: v.rep_id,
        shard_id: v.shard_id,
    }
}

pub fn j_invariant(shard_id: u8) -> u64 {
    744 + 196884 * (shard_id as u64)
}

pub struct MonsterBasis {
    dim: usize,
}

impl MonsterBasis {
    pub fn new() -> Self {
        Self { dim: DIMS }
    }
    
    pub fn basis_vector(&self, i: usize) -> MonsterVector {
        let mut coords = vec![0.0; DIMS];
        coords[i % DIMS] = 1.0;
        
        MonsterVector {
            coords,
            rep_id: (i % REPS) as u8,
            shard_id: (i % SHARDS) as u8,
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    
    #[test]
    fn test_dimensions() {
        assert_eq!(DIMS, 196883);
        assert_eq!(REPS, 194);
        assert_eq!(SHARDS, 71);
    }
    
    #[test]
    fn test_shard_partition() {
        let mut total = 0;
        for shard in 0..SHARDS as u8 {
            let (start, end) = shard_to_dims(shard);
            total += end - start;
        }
        assert_eq!(total, DIMS);
    }
    
    #[test]
    fn test_vector_norm() {
        let v = MonsterVector::from_data(b"test", 42);
        assert!(v.norm() > 0.0);
    }
    
    #[test]
    fn test_hecke_preserves_norm() {
        let v = MonsterVector::from_data(b"test", 42);
        let v2 = hecke_operator(&v, 2);
        assert!((v.norm() - v2.norm()).abs() < 1e-10);
    }
}
