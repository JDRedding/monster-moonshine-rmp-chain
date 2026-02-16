// 71-sharded message passing system
use serde::{Deserialize, Serialize};
use std::collections::HashMap;

const SHARDS: usize = 71;
const MONSTER_WALK_STEP: u64 = 0x1F90;

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ShardMessage {
    pub shard_id: u8,
    pub data: Vec<u8>,
    pub monster_position: u64,
    pub j_invariant: u64,
}

impl ShardMessage {
    pub fn new(data: Vec<u8>) -> Self {
        let shard_id = Self::compute_shard(&data);
        let monster_position = Self::monster_walk(&data);
        let j_invariant = 744 + 196884 * (shard_id as u64);
        
        Self {
            shard_id,
            data,
            monster_position,
            j_invariant,
        }
    }
    
    fn compute_shard(data: &[u8]) -> u8 {
        let hash = blake3::hash(data);
        (hash.as_bytes()[0] % SHARDS as u8)
    }
    
    fn monster_walk(data: &[u8]) -> u64 {
        data.iter().fold(0u64, |pos, &byte| {
            pos.wrapping_add(MONSTER_WALK_STEP.wrapping_mul(byte as u64))
        })
    }
}

#[derive(Debug)]
pub struct ShardRouter {
    pub shards: HashMap<u8, Vec<ShardMessage>>,
    pub message_count: u64,
}

impl ShardRouter {
    pub fn new() -> Self {
        Self {
            shards: HashMap::new(),
            message_count: 0,
        }
    }
    
    pub fn route(&mut self, msg: ShardMessage) {
        self.shards.entry(msg.shard_id).or_default().push(msg);
        self.message_count += 1;
    }
    
    pub fn get_shard(&self, shard_id: u8) -> Option<&Vec<ShardMessage>> {
        self.shards.get(&(shard_id % SHARDS as u8))
    }
    
    pub fn shard_load(&self) -> HashMap<u8, usize> {
        self.shards.iter().map(|(k, v)| (*k, v.len())).collect()
    }
}

#[derive(Debug)]
pub struct MessageBus {
    pub router: ShardRouter,
    pub consensus_nodes: Vec<u8>,  // 23 nodes
}

impl MessageBus {
    pub fn new() -> Self {
        Self {
            router: ShardRouter::new(),
            consensus_nodes: (0..23).collect(),
        }
    }
    
    pub fn send(&mut self, data: Vec<u8>) -> u8 {
        let msg = ShardMessage::new(data);
        let shard_id = msg.shard_id;
        self.router.route(msg);
        shard_id
    }
    
    pub fn broadcast(&mut self, data: Vec<u8>) -> Vec<u8> {
        let mut shard_ids = Vec::new();
        for i in 0..SHARDS {
            let mut msg_data = data.clone();
            msg_data.push(i as u8);
            shard_ids.push(self.send(msg_data));
        }
        shard_ids
    }
    
    pub fn consensus_route(&self, shard_id: u8) -> Vec<u8> {
        // Map shard to consensus nodes (mod 23)
        let base_node = shard_id % 23;
        (0..3).map(|i| (base_node + i) % 23).collect()
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    
    #[test]
    fn test_shard_routing() {
        let mut bus = MessageBus::new();
        let shard = bus.send(b"test".to_vec());
        assert!(shard < 71);
        assert_eq!(bus.router.message_count, 1);
    }
    
    #[test]
    fn test_broadcast() {
        let mut bus = MessageBus::new();
        let shards = bus.broadcast(b"broadcast".to_vec());
        assert_eq!(shards.len(), 71);
    }
    
    #[test]
    fn test_consensus_mapping() {
        let bus = MessageBus::new();
        let nodes = bus.consensus_route(42);
        assert_eq!(nodes.len(), 3);
        assert!(nodes.iter().all(|&n| n < 23));
    }
}
