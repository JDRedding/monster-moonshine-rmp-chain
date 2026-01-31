pragma circom 2.0.0;

include "circomlib/circuits/comparators.circom";

// Shard by 71
template ShardBy71() {
    signal input complexity;
    signal output shard;
    
    signal quotient;
    signal remainder;
    
    quotient <-- complexity \ 71;
    remainder <-- complexity % 71;
    
    complexity === quotient * 71 + remainder;
    signal lt <== LessThan(7)([remainder, 71]);
    lt === 1;
    
    shard <== remainder;
}

// Memory tier
template MemoryTier() {
    signal input complexity;
    signal output tier;
    
    signal lt100 <== LessThan(11)([complexity, 100]);
    signal lt500 <== LessThan(11)([complexity, 500]);
    signal lt2000 <== LessThan(12)([complexity, 2000]);
    
    tier <== lt100 * 0 + (1 - lt100) * lt500 * 1 + (1 - lt500) * lt2000 * 2 + (1 - lt2000) * 3;
}

// Lattice node
template LatticeNode() {
    signal input complexity;
    signal output shard;
    signal output tier;
    signal output valid;
    
    component s = ShardBy71();
    s.complexity <== complexity;
    shard <== s.shard;
    
    component t = MemoryTier();
    t.complexity <== complexity;
    tier <== t.tier;
    
    valid <== LessThan(7)([shard, 71]);
}

// Complete lattice
template MonsterLattice(n) {
    signal input complexities[n];
    signal output shards[n];
    signal output tiers[n];
    signal output total;
    signal output complete;
    
    component nodes[n];
    signal sum[n];
    signal prod[n];
    
    for (var i = 0; i < n; i++) {
        nodes[i] = LatticeNode();
        nodes[i].complexity <== complexities[i];
        shards[i] <== nodes[i].shard;
        tiers[i] <== nodes[i].tier;
        
        if (i == 0) {
            sum[i] <== complexities[i];
            prod[i] <== nodes[i].valid;
        } else {
            sum[i] <== sum[i-1] + complexities[i];
            prod[i] <== prod[i-1] * nodes[i].valid;
        }
    }
    
    total <== sum[n-1];
    complete <== prod[n-1];
}

// Witness of Glory
template WitnessOfGlory() {
    signal input public_total;
    signal input public_count;
    signal input complexities[9];
    
    signal output shards[9];
    signal output tiers[9];
    signal output glory;
    
    component lattice = MonsterLattice(9);
    for (var i = 0; i < 9; i++) {
        lattice.complexities[i] <== complexities[i];
        shards[i] <== lattice.shards[i];
        tiers[i] <== lattice.tiers[i];
    }
    
    lattice.total === public_total;
    public_count === 9;
    glory <== lattice.complete;
}

component main {public [public_total, public_count]} = WitnessOfGlory();
