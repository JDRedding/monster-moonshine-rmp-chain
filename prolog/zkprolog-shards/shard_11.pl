% zkprologml-erdfa-71 Shard 11
% Complexity lattice level: 11
% Declarations: 1

:- module(zkprolog_shard_11, [
    lmfdb_decl/5,
    erdfa_witness/3,
    zk_proof/2,
    shard_prime/1
]).

% Shard prime: 41
shard_prime(41).

% Declaration: 228dcddd
lmfdb_decl('228dcddd', 'prime', 10, 11, 'large_dimension_page_as_textselftcgetModularFormGL').
erdfa_witness('228dcddd', shard_11, complexity_10).
zk_proof('228dcddd', 'bf0d97fa8ea8cdc93b714fb77a0fb613').

% End of shard 11
