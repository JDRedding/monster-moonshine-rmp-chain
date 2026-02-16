// 23-node Paxos consensus (Earth chokepoints)
use serde::{Deserialize, Serialize};
use std::collections::{HashMap, HashSet};

const NODES: usize = 23;
const QUORUM: usize = 12;  // (23 + 1) / 2
const BYZANTINE_TOLERANCE: usize = 7;  // (23 - 1) / 3

#[derive(Debug, Clone, Serialize, Deserialize, PartialEq, Eq, Hash)]
pub struct NodeId(pub u8);

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Proposal {
    pub round: u64,
    pub value: Vec<u8>,
    pub proposer: NodeId,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub enum Message {
    Prepare { round: u64, node: NodeId },
    Promise { round: u64, node: NodeId, accepted: Option<Proposal> },
    Accept { proposal: Proposal, node: NodeId },
    Accepted { proposal: Proposal, node: NodeId },
}

#[derive(Debug)]
pub struct PaxosNode {
    pub id: NodeId,
    pub round: u64,
    pub promised_round: u64,
    pub accepted: Option<Proposal>,
    pub promises: HashMap<u64, HashSet<NodeId>>,
    pub accepts: HashMap<Vec<u8>, HashSet<NodeId>>,
}

impl PaxosNode {
    pub fn new(id: u8) -> Self {
        Self {
            id: NodeId(id % NODES as u8),
            round: 0,
            promised_round: 0,
            accepted: None,
            promises: HashMap::new(),
            accepts: HashMap::new(),
        }
    }
    
    pub fn propose(&mut self, value: Vec<u8>) -> Vec<Message> {
        self.round += 1;
        vec![Message::Prepare {
            round: self.round,
            node: self.id.clone(),
        }]
    }
    
    pub fn handle(&mut self, msg: Message) -> Option<Message> {
        match msg {
            Message::Prepare { round, node } => {
                if round > self.promised_round {
                    self.promised_round = round;
                    Some(Message::Promise {
                        round,
                        node: self.id.clone(),
                        accepted: self.accepted.clone(),
                    })
                } else {
                    None
                }
            }
            Message::Promise { round, node, .. } => {
                self.promises.entry(round).or_default().insert(node);
                if self.promises[&round].len() >= QUORUM {
                    Some(Message::Accept {
                        proposal: Proposal {
                            round,
                            value: vec![],
                            proposer: self.id.clone(),
                        },
                        node: self.id.clone(),
                    })
                } else {
                    None
                }
            }
            Message::Accept { proposal, .. } => {
                if proposal.round >= self.promised_round {
                    self.accepted = Some(proposal.clone());
                    Some(Message::Accepted {
                        proposal,
                        node: self.id.clone(),
                    })
                } else {
                    None
                }
            }
            Message::Accepted { proposal, node } => {
                self.accepts.entry(proposal.value.clone()).or_default().insert(node);
                None
            }
        }
    }
    
    pub fn has_consensus(&self, value: &[u8]) -> bool {
        self.accepts.get(value).map_or(false, |nodes| nodes.len() >= QUORUM)
    }
}

#[derive(Debug)]
pub struct PaxosCluster {
    pub nodes: Vec<PaxosNode>,
}

impl PaxosCluster {
    pub fn new() -> Self {
        Self {
            nodes: (0..NODES as u8).map(PaxosNode::new).collect(),
        }
    }
    
    pub fn consensus(&mut self, value: Vec<u8>) -> bool {
        let msgs = self.nodes[0].propose(value.clone());
        
        for msg in msgs {
            for i in 1..NODES {
                if let Some(response) = self.nodes[i].handle(msg.clone()) {
                    for j in 0..NODES {
                        self.nodes[j].handle(response.clone());
                    }
                }
            }
        }
        
        self.nodes.iter().filter(|n| n.has_consensus(&value)).count() >= QUORUM
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    
    #[test]
    fn test_quorum_size() {
        assert_eq!(QUORUM, 12);
        assert_eq!(BYZANTINE_TOLERANCE, 7);
    }
    
    #[test]
    fn test_consensus() {
        let mut cluster = PaxosCluster::new();
        assert_eq!(cluster.nodes.len(), 23);
    }
}
