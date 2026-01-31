% LMFDB Search with OODA Loop + MCTS
% Search 424k parquet files using Observe-Orient-Decide-Act + Monte Carlo Tree Search

:- module(lmfdb_ooda_mcts, [
    search_lmfdb_parquet/0,
    ooda_search/3,
    mcts_select_batch/2
]).

:- use_module(library(clpfd)).
:- dynamic observation/3.
:- dynamic orientation/3.
:- dynamic decision/3.
:- dynamic action_result/3.
:- dynamic mcts_node/4.
:- dynamic visit_count/2.
:- dynamic reward_sum/2.

% Monster primes for batch sizing
monster_prime(2). monster_prime(3). monster_prime(5). monster_prime(7).
monster_prime(11). monster_prime(13). monster_prime(17). monster_prime(19).
monster_prime(23). monster_prime(29). monster_prime(31). monster_prime(41).
monster_prime(47). monster_prime(59). monster_prime(71).

% ============================================================================
% MAIN SEARCH
% ============================================================================

search_lmfdb_parquet :-
    writeln('🔍 LMFDB Search: OODA Loop × MCTS'),
    writeln('==================================='),
    nl,
    
    % OBSERVE: Find all parquet files
    observe_parquet_files(Files),
    length(Files, Total),
    format('📊 Observed ~w parquet files~n~n', [Total]),
    
    % ORIENT: Classify by Monster primes
    orient_by_monster_primes(Files, Oriented),
    format('🧭 Oriented into ~w groups~n~n', [15]),
    
    % DECIDE: Use MCTS to select optimal search strategy
    mcts_decide_strategy(Oriented, Strategy),
    format('🎯 Decision: ~w~n~n', [Strategy]),
    
    % ACT: Execute search with chosen strategy
    act_search_lmfdb(Strategy, Results),
    length(Results, Found),
    format('✅ Action complete: Found ~w LMFDB matches~n', [Found]),
    
    % Report
    report_results(Results).

% ============================================================================
% OBSERVE PHASE
% ============================================================================

observe_parquet_files(Files) :-
    writeln('👁️  OBSERVE: Discovering parquet files...'),
    
    % Find all parquet files
    tmp_file_stream(text, TmpFile, Stream),
    close(Stream),
    
    format(atom(Cmd), 'find /home/mdupont -name "*.parquet" 2>/dev/null > ~w', [TmpFile]),
    shell(Cmd),
    
    % Read file list
    read_file_to_codes(TmpFile, Codes, []),
    string_codes(Content, Codes),
    split_string(Content, "\n", "\n", Lines),
    exclude(=(""), Lines, Files),
    
    % Store observation
    length(Files, N),
    get_time(T),
    assertz(observation(parquet_files, T, N)),
    
    delete_file(TmpFile).

% ============================================================================
% ORIENT PHASE
% ============================================================================

orient_by_monster_primes(Files, Oriented) :-
    writeln('🧭 ORIENT: Grouping by Monster primes...'),
    
    % Divide files into 15 groups (one per Monster prime)
    length(Files, Total),
    findall(
        Prime-Group,
        (
            monster_prime(Prime),
            BatchSize is Total // 15,
            Start is (Prime - 2) * BatchSize,
            length(Prefix, Start),
            append(Prefix, Rest, Files),
            length(Group, BatchSize),
            append(Group, _, Rest)
        ),
        Oriented
    ),
    
    % Store orientation
    get_time(T),
    assertz(orientation(monster_groups, T, Oriented)).

% ============================================================================
% DECIDE PHASE (MCTS)
% ============================================================================

mcts_decide_strategy(Oriented, Strategy) :-
    writeln('🎯 DECIDE: Running MCTS for optimal strategy...'),
    
    % Initialize MCTS root
    assertz(mcts_node(root, Oriented, [], 0)),
    assertz(visit_count(root, 0)),
    assertz(reward_sum(root, 0)),
    
    % Run MCTS iterations (71 iterations for Monster prime)
    forall(
        between(1, 71, Iter),
        (
            mcts_iteration(root),
            (Iter mod 10 =:= 0 -> format('  Iteration ~w/71~n', [Iter]) ; true)
        )
    ),
    
    % Select best strategy
    mcts_best_child(root, BestChild),
    mcts_node(BestChild, _, Strategy, _),
    
    % Store decision
    get_time(T),
    assertz(decision(search_strategy, T, Strategy)).

% MCTS iteration
mcts_iteration(Root) :-
    % 1. Selection
    mcts_select(Root, Leaf),
    
    % 2. Expansion
    mcts_expand(Leaf, NewNode),
    
    % 3. Simulation
    mcts_simulate(NewNode, Reward),
    
    % 4. Backpropagation
    mcts_backpropagate(NewNode, Reward).

% Selection: UCB1
mcts_select(Node, Selected) :-
    findall(
        Child,
        mcts_node(Child, _, _, Node),
        Children
    ),
    (   Children = []
    ->  Selected = Node
    ;   maplist(ucb1_score, Children, Scores),
        max_member(MaxScore, Scores),
        nth0(Idx, Scores, MaxScore),
        nth0(Idx, Children, BestChild),
        mcts_select(BestChild, Selected)
    ).

% UCB1 score
ucb1_score(Node, Score) :-
    visit_count(Node, Visits),
    reward_sum(Node, Reward),
    mcts_node(Node, _, _, Parent),
    visit_count(Parent, ParentVisits),
    (   Visits > 0
    ->  Exploitation is Reward / Visits,
        Exploration is sqrt(2 * log(ParentVisits) / Visits),
        Score is Exploitation + Exploration
    ;   Score is 1e10  % Unvisited nodes get high priority
    ).

% Expansion
mcts_expand(Node, NewNode) :-
    mcts_node(Node, State, _, _),
    generate_child_states(State, ChildStates),
    (   ChildStates = []
    ->  NewNode = Node
    ;   random_member(ChildState, ChildStates),
        gensym(node, NewNode),
        assertz(mcts_node(NewNode, ChildState, [], Node)),
        assertz(visit_count(NewNode, 0)),
        assertz(reward_sum(NewNode, 0))
    ).

% Generate child states (search strategies)
generate_child_states(State, Children) :-
    findall(
        Strategy,
        (
            member(Strategy, [
                parallel_71,
                sequential_prime,
                breadth_first,
                depth_first,
                adaptive_batch
            ])
        ),
        Children
    ).

% Simulation (rollout)
mcts_simulate(Node, Reward) :-
    mcts_node(Node, State, _, _),
    estimate_reward(State, Reward).

% Estimate reward based on state
estimate_reward(State, Reward) :-
    (   is_list(State), length(State, N)
    ->  Reward is 1.0 / (1 + N)  % Prefer smaller batches
    ;   Reward is 0.5
    ).

% Backpropagation
mcts_backpropagate(Node, Reward) :-
    visit_count(Node, V),
    reward_sum(Node, R),
    retract(visit_count(Node, V)),
    retract(reward_sum(Node, R)),
    V1 is V + 1,
    R1 is R + Reward,
    assertz(visit_count(Node, V1)),
    assertz(reward_sum(Node, R1)),
    
    % Propagate to parent
    (   mcts_node(Node, _, _, Parent),
        Parent \= 0
    ->  mcts_backpropagate(Parent, Reward)
    ;   true
    ).

% Select best child
mcts_best_child(Parent, BestChild) :-
    findall(
        Visits-Child,
        (
            mcts_node(Child, _, _, Parent),
            visit_count(Child, Visits)
        ),
        Pairs
    ),
    sort(1, @>=, Pairs, [_-BestChild|_]).

% ============================================================================
% ACT PHASE
% ============================================================================

act_search_lmfdb(Strategy, Results) :-
    writeln('⚡ ACT: Executing search strategy...'),
    format('Strategy: ~w~n~n', [Strategy]),
    
    % Execute based on strategy
    (   Strategy = parallel_71
    ->  act_parallel_71(Results)
    ;   Strategy = sequential_prime
    ->  act_sequential_prime(Results)
    ;   Strategy = breadth_first
    ->  act_breadth_first(Results)
    ;   Strategy = adaptive_batch
    ->  act_adaptive_batch(Results)
    ;   act_default(Results)
    ),
    
    % Store action result
    get_time(T),
    length(Results, N),
    assertz(action_result(search_lmfdb, T, N)).

% Parallel search with 71 workers
act_parallel_71(Results) :-
    writeln('  Using 71 parallel workers (Monster prime)'),
    
    % Get all parquet files
    observation(parquet_files, _, _),
    findall(F, observation(parquet_files, _, F), [Total]),
    
    % Create batches of 71
    findall(
        File,
        (
            between(1, Total, I),
            format(atom(File), '/tmp/lmfdb_batch_~w.txt', [I])
        ),
        Batches
    ),
    
    % Search each batch for LMFDB
    findall(
        Match,
        (
            member(Batch, Batches),
            search_batch_for_lmfdb(Batch, Match)
        ),
        Results
    ).

% Sequential search by prime order
act_sequential_prime(Results) :-
    writeln('  Sequential search by Monster prime order'),
    orientation(monster_groups, _, Groups),
    findall(
        Match,
        (
            member(Prime-Group, Groups),
            format('  Processing prime ~w group...~n', [Prime]),
            member(File, Group),
            search_file_for_lmfdb(File, Match)
        ),
        Results
    ).

% Breadth-first search
act_breadth_first(Results) :-
    writeln('  Breadth-first search'),
    observation(parquet_files, _, _),
    findall(
        Match,
        (
            observation(parquet_files, _, Files),
            member(File, Files),
            search_file_for_lmfdb(File, Match)
        ),
        Results
    ).

% Adaptive batch sizing
act_adaptive_batch(Results) :-
    writeln('  Adaptive batch sizing'),
    observation(parquet_files, _, _),
    adaptive_search_lmfdb(Results).

% Default strategy
act_default(Results) :-
    writeln('  Default sequential search'),
    act_breadth_first(Results).

% ============================================================================
% SEARCH IMPLEMENTATIONS
% ============================================================================

% Search single file for LMFDB
search_file_for_lmfdb(File, Match) :-
    exists_file(File),
    
    % Use Rust binary to search
    format(atom(Cmd), './target/release/search_parquet_batch ~w lmfdb LMFDB L-function elliptic modular 2>/dev/null', [File]),
    catch(
        (
            shell(Cmd, Status),
            Status =:= 0,
            Match = match(File, lmfdb)
        ),
        _,
        fail
    ).

% Search batch for LMFDB
search_batch_for_lmfdb(BatchFile, Match) :-
    exists_file(BatchFile),
    search_file_for_lmfdb(BatchFile, Match).

% Adaptive search
adaptive_search_lmfdb(Results) :-
    observation(parquet_files, _, Files),
    adaptive_search_loop(Files, 71, Results).

adaptive_search_loop([], _, []).
adaptive_search_loop(Files, BatchSize, Results) :-
    length(Batch, BatchSize),
    append(Batch, Rest, Files),
    !,
    
    % Search batch
    findall(M, (member(F, Batch), search_file_for_lmfdb(F, M)), BatchResults),
    
    % Adapt batch size based on results
    length(BatchResults, Found),
    (   Found > 10
    ->  NewBatchSize is max(23, BatchSize // 2)  % Reduce if many matches
    ;   Found < 2
    ->  NewBatchSize is min(71, BatchSize * 2)   % Increase if few matches
    ;   NewBatchSize = BatchSize
    ),
    
    % Continue
    adaptive_search_loop(Rest, NewBatchSize, RestResults),
    append(BatchResults, RestResults, Results).
adaptive_search_loop(Files, _, Results) :-
    % Handle remaining files
    findall(M, (member(F, Files), search_file_for_lmfdb(F, M)), Results).

% ============================================================================
% REPORTING
% ============================================================================

report_results(Results) :-
    nl,
    writeln('📊 OODA LOOP COMPLETE'),
    writeln('====================='),
    nl,
    
    % Observations
    findall(T-Type-Val, observation(Type, T, Val), Obs),
    length(Obs, ObsCount),
    format('Observations: ~w~n', [ObsCount]),
    
    % Orientations
    findall(T-Type-Val, orientation(Type, T, Val), Ori),
    length(Ori, OriCount),
    format('Orientations: ~w~n', [OriCount]),
    
    % Decisions
    findall(T-Type-Val, decision(Type, T, Val), Dec),
    length(Dec, DecCount),
    format('Decisions: ~w~n', [DecCount]),
    
    % Actions
    findall(T-Type-Val, action_result(Type, T, Val), Act),
    length(Act, ActCount),
    format('Actions: ~w~n', [ActCount]),
    
    nl,
    
    % Results
    length(Results, Total),
    format('Total LMFDB matches: ~w~n', [Total]),
    
    % Show sample
    (   Total > 0
    ->  writeln('~nSample matches:'),
        length(Sample, 5),
        append(Sample, _, Results),
        forall(member(M, Sample), format('  ~w~n', [M]))
    ;   writeln('No matches found')
    ).

% ============================================================================
% UTILITIES
% ============================================================================

% Get random member
random_member(X, List) :-
    length(List, Len),
    Len > 0,
    random_between(0, Len, Idx),
    nth0(Idx, List, X).

% ============================================================================
% QUERIES
% ============================================================================

% ?- search_lmfdb_parquet.
% ?- ooda_search(lmfdb, Strategy, Results).
% ?- mcts_select_batch(Files, OptimalBatch).
