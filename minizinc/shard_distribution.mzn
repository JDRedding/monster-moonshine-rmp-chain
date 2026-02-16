% Monster Shard Distribution Optimization
% Optimally distribute LMFDB chunks across 71 shards

% Parameters
int: num_shards = 71;  % Monster prime
int: num_chunks;       % Number of chunks to distribute
array[1..num_chunks] of int: chunk_sizes;  % Size of each chunk in bytes

% Decision variables
array[1..num_chunks] of var 1..num_shards: shard_assignment;

% Auxiliary variables
array[1..num_shards] of var int: shard_load;

% Constraint: Calculate load for each shard
constraint forall(s in 1..num_shards) (
    shard_load[s] = sum(c in 1..num_chunks where shard_assignment[c] = s) (chunk_sizes[c])
);

% Objective: Minimize maximum shard load (load balancing)
var int: max_load = max(shard_load);

% Constraint: Ensure all shards are used (Monster symmetry)
constraint forall(s in 1..num_shards) (
    exists(c in 1..num_chunks) (shard_assignment[c] = s)
);

% Constraint: Similar-sized chunks should be distributed evenly
constraint forall(c1, c2 in 1..num_chunks where c1 < c2 /\ abs(chunk_sizes[c1] - chunk_sizes[c2]) < 1000) (
    shard_assignment[c1] != shard_assignment[c2]
);

% Solve: Minimize maximum load
solve minimize max_load;

% Output
output [
    "Optimal Shard Distribution:\n",
    "Max Load: \(max_load) bytes\n",
    "Min Load: \(min(shard_load)) bytes\n",
    "Avg Load: \(sum(shard_load) div num_shards) bytes\n",
    "Balance Factor: \(max_load * 100 div (sum(shard_load) div num_shards))%\n\n",
    "Shard Assignments:\n"
] ++ [
    "Chunk \(c): Shard \(shard_assignment[c]) (\(chunk_sizes[c]) bytes)\n"
    | c in 1..num_chunks
] ++ [
    "\nShard Loads:\n"
] ++ [
    "Shard \(s): \(shard_load[s]) bytes\n"
    | s in 1..num_shards
];
