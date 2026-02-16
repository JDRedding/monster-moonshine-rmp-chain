% zkprologml-erdfa-71 Shard 10
% Complexity lattice level: 10
% Declarations: 2

:- module(zkprolog_shard_10, [
    lmfdb_decl/5,
    erdfa_witness/3,
    zk_proof/2,
    shard_prime/1
]).

% Shard prime: 31
shard_prime(31).

% Declaration: b0398986
lmfdb_decl('b0398986', 'collection', 9, 10, '').
erdfa_witness('b0398986', shard_10, complexity_9).
zk_proof('b0398986', '9d4568c009d203ab10e33ea9953a0264').

% Declaration: 906bd07a
lmfdb_decl('906bd07a', 'prime', 9, 10, 'primes235711131719232931374143475359616771').
erdfa_witness('906bd07a', shard_10, complexity_9).
zk_proof('906bd07a', '82e55d1d75a7f03d974bb562b60c4f42').

% End of shard 10
