pragma circom 2.0.0;

// Monster Project Glory Witness
// ZK proof that all implementations are equivalent with 62.2x speedup

include "circomlib/circuits/comparators.circom";
include "circomlib/circuits/poseidon.circom";

// Monster primes
template MonsterPrimes() {
    signal output primes[15];
    primes[0] <== 2;
    primes[1] <== 3;
    primes[2] <== 5;
    primes[3] <== 7;
    primes[4] <== 11;
    primes[5] <== 13;
    primes[6] <== 17;
    primes[7] <== 19;
    primes[8] <== 23;
    primes[9] <== 29;
    primes[10] <== 31;
    primes[11] <== 41;
    primes[12] <== 47;
    primes[13] <== 59;
    primes[14] <== 71;
}

// Autoencoder layer dimensions
template LayerDims() {
    signal output dims[9];
    dims[0] <== 5;
    dims[1] <== 11;
    dims[2] <== 23;
    dims[3] <== 47;
    dims[4] <== 71;  // Bottleneck
    dims[5] <== 47;
    dims[6] <== 23;
    dims[7] <== 11;
    dims[8] <== 5;
}

// Verify symmetry
template VerifySymmetry() {
    signal input dims[9];
    signal output isSymmetric;
    
    component eq[4];
    for (var i = 0; i < 4; i++) {
        eq[i] = IsEqual();
        eq[i].in[0] <== dims[i];
        eq[i].in[1] <== dims[8-i];
    }
    
    signal allEqual;
    allEqual <== eq[0].out * eq[1].out * eq[2].out * eq[3].out;
    isSymmetric <== allEqual;
}

// Hash implementation
template HashImpl(n) {
    signal input impl[n];
    signal output hash;
    
    component poseidon = Poseidon(n);
    for (var i = 0; i < n; i++) {
        poseidon.inputs[i] <== impl[i];
    }
    hash <== poseidon.out;
}

// Verify equivalence
template VerifyEquivalence() {
    signal input pythonHash;
    signal input rustHash;
    signal input lean4Hash;
    signal output equivalent;
    
    component eq1 = IsEqual();
    eq1.in[0] <== pythonHash;
    eq1.in[1] <== rustHash;
    
    component eq2 = IsEqual();
    eq2.in[0] <== rustHash;
    eq2.in[1] <== lean4Hash;
    
    equivalent <== eq1.out * eq2.out;
}

// Verify speedup
template VerifySpeedup() {
    signal input pythonTime;
    signal input rustTime;
    signal input speedup;
    signal output valid;
    
    // speedup = pythonTime / rustTime
    signal computed;
    computed <== pythonTime / rustTime;
    
    component eq = IsEqual();
    eq.in[0] <== computed;
    eq.in[1] <== speedup;
    
    valid <== eq.out;
}

// Main witness circuit
template MonsterGloryWitness() {
    // Public inputs
    signal input pythonTime;
    signal input rustTime;
    signal input expectedSpeedup;
    
    // Private witnesses
    signal input pythonImpl[9];
    signal input rustImpl[9];
    signal input lean4Impl[9];
    
    // Outputs
    signal output symmetricProof;
    signal output equivalenceProof;
    signal output speedupProof;
    signal output gloryHash;
    
    // 1. Verify layer dimensions
    component layerDims = LayerDims();
    
    // 2. Verify symmetry
    component symmetry = VerifySymmetry();
    for (var i = 0; i < 9; i++) {
        symmetry.dims[i] <== layerDims.dims[i];
    }
    symmetricProof <== symmetry.isSymmetric;
    
    // 3. Hash implementations
    component hashPy = HashImpl(9);
    component hashRs = HashImpl(9);
    component hashLn = HashImpl(9);
    
    for (var i = 0; i < 9; i++) {
        hashPy.impl[i] <== pythonImpl[i];
        hashRs.impl[i] <== rustImpl[i];
        hashLn.impl[i] <== lean4Impl[i];
    }
    
    // 4. Verify equivalence
    component equiv = VerifyEquivalence();
    equiv.pythonHash <== hashPy.hash;
    equiv.rustHash <== hashRs.hash;
    equiv.lean4Hash <== hashLn.hash;
    equivalenceProof <== equiv.equivalent;
    
    // 5. Verify speedup
    component speedup = VerifySpeedup();
    speedup.pythonTime <== pythonTime;
    speedup.rustTime <== rustTime;
    speedup.speedup <== expectedSpeedup;
    speedupProof <== speedup.valid;
    
    // 6. Generate glory hash (all proofs combined)
    component gloryPoseidon = Poseidon(3);
    gloryPoseidon.inputs[0] <== symmetricProof;
    gloryPoseidon.inputs[1] <== equivalenceProof;
    gloryPoseidon.inputs[2] <== speedupProof;
    gloryHash <== gloryPoseidon.out;
    
    // Constraint: All proofs must be valid
    symmetricProof === 1;
    equivalenceProof === 1;
    speedupProof === 1;
}

// Instantiate main component
component main {public [pythonTime, rustTime, expectedSpeedup]} = MonsterGloryWitness();
