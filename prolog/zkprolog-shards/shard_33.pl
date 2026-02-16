% zkprologml-erdfa-71 Shard 33
% Complexity lattice level: 33
% Declarations: 1

:- module(zkprolog_shard_33, [
    lmfdb_decl/5,
    erdfa_witness/3,
    zk_proof/2,
    shard_prime/1
]).

% Shard prime: 7
shard_prime(7).

% Declaration: 60397b1e
lmfdb_decl('60397b1e', 'prime', 32, 33, 'example51204714647875464396655').
erdfa_witness('60397b1e', shard_33, complexity_32).
zk_proof('60397b1e', '2dab30d8a89bc8ff8584a13c2e9f5284').

% End of shard 33
