#!/bin/bash
# Build and generate Monster Glory ZK proof

set -e

echo "🔐 Building Monster Glory Witness"
echo "=================================="
echo

# Compile circuit
echo "1. Compiling Circom circuit..."
circom monster_glory.circom --r1cs --wasm --sym --c

# Generate witness
echo "2. Generating witness..."
cd monster_glory_js
node generate_witness.js monster_glory.wasm ../input.json witness.wtns
cd ..

# Setup (Powers of Tau)
echo "3. Setting up Powers of Tau..."
snarkjs powersoftau new bn128 12 pot12_0000.ptau -v
snarkjs powersoftau contribute pot12_0000.ptau pot12_0001.ptau --name="Monster" -v
snarkjs powersoftau prepare phase2 pot12_0001.ptau pot12_final.ptau -v

# Generate zkey
echo "4. Generating zkey..."
snarkjs groth16 setup monster_glory.r1cs pot12_final.ptau monster_glory_0000.zkey
snarkjs zkey contribute monster_glory_0000.zkey monster_glory_final.zkey --name="Glory" -v

# Export verification key
echo "5. Exporting verification key..."
snarkjs zkey export verificationkey monster_glory_final.zkey verification_key.json

# Generate proof
echo "6. Generating proof..."
snarkjs groth16 prove monster_glory_final.zkey monster_glory_js/witness.wtns proof.json public.json

# Verify proof
echo "7. Verifying proof..."
snarkjs groth16 verify verification_key.json public.json proof.json

echo
echo "✅ Monster Glory Witness Generated!"
echo "   Proof: proof.json"
echo "   Public: public.json"
echo "   Verification Key: verification_key.json"
