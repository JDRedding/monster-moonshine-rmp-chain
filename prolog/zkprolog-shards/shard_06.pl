% zkprologml-erdfa-71 Shard 6
% Complexity lattice level: 6
% Declarations: 2

:- module(zkprolog_shard_6, [
    lmfdb_decl/5,
    erdfa_witness/3,
    zk_proof/2,
    shard_prime/1
]).

% Shard prime: 17
shard_prime(17).

% Declaration: 0c0a7407
lmfdb_decl('0c0a7407', 'prime', 5, 6, 'example757125').
erdfa_witness('0c0a7407', shard_6, complexity_5).
zk_proof('0c0a7407', '9e1b88c753a530c3b28d4348d8ed5599').

% Declaration: b140569b
lmfdb_decl('b140569b', 'prime', 5, 6, 'selfcheck_argsNumberFieldsignature5B02C35Dgalois_g').
erdfa_witness('b140569b', shard_6, complexity_5).
zk_proof('b140569b', 'cf524880a8ebffe47980a0451d8e4f88').

% End of shard 6
