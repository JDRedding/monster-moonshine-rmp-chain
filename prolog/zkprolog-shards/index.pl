% zkprologml-erdfa-71 Master Index
% 23 shards total

:- module(zkprolog_index, [
    shard_info/3,
    load_shard/1,
    all_shards/1
]).

shard_info(11, 1, 41).
shard_info(36, 1, 17).
shard_info(41, 1, 41).
shard_info(33, 1, 7).
shard_info(28, 1, 59).
shard_info(7, 4, 19).
shard_info(16, 1, 3).
shard_info(6, 2, 17).
shard_info(44, 1, 71).
shard_info(27, 1, 47).
shard_info(51, 1, 17).
shard_info(8, 4, 23).
shard_info(10, 2, 31).
shard_info(31, 1, 3).
shard_info(48, 2, 7).
shard_info(9, 1, 29).
shard_info(13, 2, 59).
shard_info(14, 1, 71).
shard_info(24, 5, 29).
shard_info(18, 1, 7).
shard_info(57, 1, 47).
shard_info(23, 4, 23).
shard_info(52, 2, 19).

load_shard(N) :- 
    format(atom(Module), 'prolog/zkprolog-shards/shard_~|~`0t~d~2+.pl', [N]),
    consult(Module).

all_shards(Shards) :- 
    findall(S, shard_info(S, _, _), Shards).
