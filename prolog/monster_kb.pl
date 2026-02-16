% Monster Project Knowledge Base
% Captures all learnings from formal analysis and Python→Rust conversion

:- module(monster_kb, [
    tool/4,
    conversion/3,
    performance/2,
    category/2,
    workflow/3,
    finding/2
]).

% tool(Name, Score, Category, Features)
tool(prime_resonance_hecke, 65.5, hecke, [functions(13), structs(10), impls(7)]).
tool(cuda_monster_pipeline, 65.0, monster, [functions(24), structs(6), impls(3)]).
tool(monster_is_meme, 54.0, monster, [functions(10), structs(6), impls(4)]).
tool(zk71_kernel_overlay, 45.5, zk71, [functions(4), parquet(2), alignment(3.0)]).
tool(zk71_integration_test, 44.5, zk71, [functions(8), structs(1), alignment(3.0)]).
tool(zk71_unified_fs, 42.5, zk71, [functions(4), parquet(1), alignment(3.0)]).
tool(zk71_full_spectrum_sweep, 42.0, zk71, [functions(5), parquet(1), alignment(3.0)]).
tool(monster_walk_gpu, 41.0, monster, [functions(10), structs(4), impls(1)]).
tool(monster_gpu_consumer, 40.0, monster, [functions(11), structs(3), impls(1)]).
tool(quantum_71_shards, 38.0, zk71, [structs(3), alignment(3.0)]).

% conversion(Python, Rust, Status)
conversion('multi_level_review.py', 'src/bin/multi_level_review.rs', existed).
conversion('create_monster_autoencoder.py', 'src/bin/monster_autoencoder.rs', existed).
conversion('extract_71_objects.py', 'src/bin/extract_71_objects.rs', existed).
conversion('shard_lmfdb_by_71.py', 'src/bin/shard_lmfdb_by_71.rs', existed).
conversion('train_monster.py', 'src/bin/train_monster.rs', existed).
conversion('prove_zk_rdfa.py', 'src/bin/prove_zk_rdfa_rust.rs', new).
conversion('shmem/gpu_loader.py', 'shmem/gpu_loader.rs', new).
conversion('zk71fs/driver.py', 'zk71fs/driver.rs', new).

% performance(Metric, Value)
performance(speedup, 62.2).
performance(total_tools, 111).
performance(parquet_tools, 25).
performance(zk71_tools, 9).
performance(monster_tools, 15).

% category(Tool, Category)
category(Tool, zk71) :- tool(Tool, _, zk71, _).
category(Tool, monster) :- tool(Tool, _, monster, _).
category(Tool, hecke) :- tool(Tool, _, hecke, _).
category(Tool, gpu) :- tool(Tool, _, _, Features), member(gpu, Features).
category(Tool, parquet) :- tool(Tool, _, _, Features), member(parquet(_), Features).

% workflow(Name, Steps, Purpose)
workflow(lmfdb_analysis, [
    extract_71_objects,
    shard_lmfdb_by_71,
    zk71_full_spectrum_sweep
], 'Analyze LMFDB for 71-valued objects').

workflow(neural_training, [
    create_monster_autoencoder,
    train_monster,
    prove_zk_rdfa_rust
], 'Train 71-layer autoencoder with ZK proofs').

workflow(tool_analysis, [
    monster_tools_catalog,
    unified_formal_analysis,
    view_html
], 'Analyze and rank all tools').

% finding(Category, Fact)
finding(monster_walk, 'Removing 8 factors preserves 4 digits (8080)').
finding(performance, 'Python to Rust: 62.2x average speedup').
finding(complexity, 'prime_resonance_hecke most complex (65.5 score)').
finding(alignment, '9 tools with perfect ZK71 alignment (3.0)').
finding(parquet, '25 tools use parquet operations').
finding(factorization, 'Monster order: 2^46 × 3^20 × 5^9 × ... × 71').

% monster_primes/1
monster_primes([2,3,5,7,11,13,17,19,23,29,31,41,47,59,71]).

% monster_factorization/1
monster_factorization([
    (2,46), (3,20), (5,9), (7,6), (11,2),
    (13,3), (17,1), (19,1), (23,1), (29,1),
    (31,1), (41,1), (47,1), (59,1), (71,1)
]).

% Query helpers
top_tools(N, Tools) :-
    findall(Score-Tool, tool(Tool, Score, _, _), Pairs),
    sort(0, @>=, Pairs, Sorted),
    length(Prefix, N),
    append(Prefix, _, Sorted),
    maplist([_-T, T]>>true, Prefix, Tools).

zk71_tools(Tools) :-
    findall(Tool, category(Tool, zk71), Tools).

monster_tools(Tools) :-
    findall(Tool, category(Tool, monster), Tools).

parquet_tools(Tools) :-
    findall(Tool, category(Tool, parquet), Tools).

conversions_by_status(Status, Conversions) :-
    findall(Py-Rust, conversion(Py, Rust, Status), Conversions).

% Documentation
doc(quickstart, 'QUICKSTART.md').
doc(usage, 'USAGE.md').
doc(index, 'DOCUMENTATION_INDEX.md').
doc(conversion, 'PYTHON_TO_RUST_CONVERSION.md').
doc(analysis, 'FORMAL_ANALYSIS_INDEX.md').

% Crates used
crate(polars, 'DataFrame operations').
crate(serde, 'Serialization').
crate(sha2, 'Hashing').
crate(burn, 'Neural networks').
crate(syn, 'AST parsing').
crate(walkdir, 'Directory traversal').
crate(tokio, 'Async runtime').

% Example queries
:- begin_tests(monster_kb).

test(top_3_tools) :-
    top_tools(3, [prime_resonance_hecke, cuda_monster_pipeline, monster_is_meme]).

test(zk71_count) :-
    zk71_tools(Tools),
    length(Tools, 9).

test(speedup) :-
    performance(speedup, 62.2).

test(monster_primes_count) :-
    monster_primes(Primes),
    length(Primes, 15).

:- end_tests(monster_kb).

% Run examples
run_examples :-
    writeln('🔬 Monster Project Knowledge Base'),
    writeln('================================'),
    nl,
    writeln('Top 5 Tools:'),
    top_tools(5, Tools),
    forall(member(T, Tools), (
        tool(T, Score, Cat, _),
        format('  ~w (~w) - ~w~n', [T, Score, Cat])
    )),
    nl,
    writeln('ZK71 Tools:'),
    zk71_tools(ZK71),
    length(ZK71, ZK71Count),
    format('  Total: ~w~n', [ZK71Count]),
    forall(member(T, ZK71), format('  • ~w~n', [T])),
    nl,
    writeln('Conversions (new):'),
    conversions_by_status(new, New),
    forall(member(Py-Rust, New), format('  ~w → ~w~n', [Py, Rust])),
    nl,
    writeln('Key Findings:'),
    forall(finding(_, Fact), format('  • ~w~n', [Fact])),
    nl,
    writeln('Performance Metrics:'),
    performance(speedup, Speedup),
    performance(total_tools, Total),
    performance(parquet_tools, Parquet),
    format('  Speedup: ~wx~n', [Speedup]),
    format('  Total tools: ~w~n', [Total]),
    format('  Parquet tools: ~w~n', [Parquet]),
    nl,
    writeln('Workflows:'),
    forall(workflow(Name, Steps, Purpose), (
        format('  ~w: ~w~n', [Name, Purpose]),
        forall(member(Step, Steps), format('    → ~w~n', [Step]))
    )),
    nl.

% Query interface
query_tool(Name) :-
    tool(Name, Score, Category, Features),
    format('Tool: ~w~n', [Name]),
    format('  Score: ~w~n', [Score]),
    format('  Category: ~w~n', [Category]),
    format('  Features: ~w~n', [Features]).

query_workflow(Name) :-
    workflow(Name, Steps, Purpose),
    format('Workflow: ~w~n', [Name]),
    format('  Purpose: ~w~n', [Purpose]),
    format('  Steps:~n'),
    forall(member(Step, Steps), format('    ~w. ~w~n', [Step])).

% Reasoning
tool_complexity(Tool, high) :- tool(Tool, Score, _, _), Score >= 50.
tool_complexity(Tool, medium) :- tool(Tool, Score, _, _), Score >= 30, Score < 50.
tool_complexity(Tool, low) :- tool(Tool, Score, _, _), Score < 30.

has_feature(Tool, Feature) :-
    tool(Tool, _, _, Features),
    member(Feature, Features).

related_tools(Tool1, Tool2) :-
    category(Tool1, Cat),
    category(Tool2, Cat),
    Tool1 \= Tool2.

% Statistics
total_conversions(N) :-
    findall(_, conversion(_, _, _), L),
    length(L, N).

new_conversions(N) :-
    findall(_, conversion(_, _, new), L),
    length(L, N).

avg_tool_score(Avg) :-
    findall(Score, tool(_, Score, _, _), Scores),
    sum_list(Scores, Sum),
    length(Scores, N),
    Avg is Sum / N.
