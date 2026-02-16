% zkprologml-erdfa-71 Shard 7
% Complexity lattice level: 7
% Declarations: 4

:- module(zkprolog_shard_7, [
    lmfdb_decl/5,
    erdfa_witness/3,
    zk_proof/2,
    shard_prime/1
]).

% Shard prime: 19
shard_prime(19).

% Declaration: ba854bf5
lmfdb_decl('ba854bf5', 'prime', 6, 7, 'phi12x225x1200nu5x565x41507nu5x3125035nu-57x211000').
erdfa_witness('ba854bf5', shard_7, complexity_6).
zk_proof('ba854bf5', '7b584a266d17b4860276916fa794b888').

% Declaration: a2ec5f9c
lmfdb_decl('a2ec5f9c', 'prime', 6, 7, 'phi12x225x1200nu5x565x41507nu5x3125035nu-57x211000').
erdfa_witness('a2ec5f9c', shard_7, complexity_6).
zk_proof('a2ec5f9c', 'fb767261af3b5b09f6159a263b8c5a05').

% Declaration: c90782f9
lmfdb_decl('c90782f9', 'prime', 6, 7, 'selfcheck_argsVarietyAbelianFqabvar_point_count5B7').
erdfa_witness('c90782f9', shard_7, complexity_6).
zk_proof('c90782f9', '12b4746d0302b2b61916d543f1f843da').

% Declaration: 99f94b42
lmfdb_decl('99f94b42', 'prime', 6, 7, 'selfcheck_argsVarietyAbelianFqabvar_point_count5B7').
erdfa_witness('99f94b42', shard_7, complexity_6).
zk_proof('99f94b42', '12b4746d0302b2b61916d543f1f843da').

% End of shard 7
