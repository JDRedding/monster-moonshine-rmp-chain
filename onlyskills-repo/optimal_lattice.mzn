% MiniZinc: Optimal Lattice Position for KB Nodes
% Minimize total edge distance in Monster lattice

include "globals.mzn";

% Parameters
int: n_nodes;  % Number of KB nodes
int: n_edges;  % Number of edges
array[1..n_edges, 1..2] of 1..n_nodes: edges;  % Edge list
array[1..n_edges] of int: weights;  % Edge weights
array[1..n_nodes] of int: complexity;  % Node complexity

% Decision variables
array[1..n_nodes] of var 0..70: shard;  % Shard assignment (0-70)
array[1..n_nodes] of var 0..3: tier;    % Memory tier (0=GPU, 1=shmem, 2=fast, 3=bulk)

% Constraints

% 1. Shard determined by complexity
constraint forall(i in 1..n_nodes)(
  shard[i] = complexity[i] mod 71
);

% 2. Tier determined by complexity
constraint forall(i in 1..n_nodes)(
  if complexity[i] < 100 then tier[i] = 0
  elseif complexity[i] < 500 then tier[i] = 1
  elseif complexity[i] < 2000 then tier[i] = 2
  else tier[i] = 3
  endif
);

% 3. All shards used (balanced distribution)
constraint forall(s in 0..70)(
  exists(i in 1..n_nodes)(shard[i] = s) \/ s >= n_nodes
);

% Objective: Minimize total edge distance
var int: total_distance = sum(e in 1..n_edges)(
  weights[e] * abs(shard[edges[e,1]] - shard[edges[e,2]])
);

solve minimize total_distance;

% Output
output [
  "Optimal Lattice Positions:\n",
  "==========================\n\n"
] ++
[
  "Node " ++ show(i) ++ ": shard=" ++ show(shard[i]) ++ 
  ", tier=" ++ show(tier[i]) ++ ", complexity=" ++ show(complexity[i]) ++ "\n"
  | i in 1..n_nodes
] ++
[
  "\nTotal edge distance: " ++ show(total_distance) ++ "\n"
];

% Example data (9 tools from session)
n_nodes = 9;
n_edges = 4;

edges = [|
  1, 2 |  % lightning → prime_tower
  2, 3 |  % prime_tower → knuth
  4, 5 |  % unified → syn
  6, 7 |  % inode → zkprolog
|];

weights = [5, 3, 10, 2];

complexity = [387, 236, 386, 624, 350, 200, 300, 250, 50];
% lightning, prime_tower, knuth, unified, syn, inode, zkprolog, zk71, setup
