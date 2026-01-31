% NLP Model Builder: Analyze entire project with NLP
% Build comprehensive semantic model from all search indexes

:- module(nlp_model_builder, [
    build_project_nlp_model/0,
    analyze_all_files/1,
    extract_project_vocabulary/1,
    build_concept_graph/1,
    generate_nlp_report/0
]).

:- use_module(zero_ontology_nlp, [
    tokenize_text/2,
    extract_concepts/2,
    extract_entities/2,
    extract_numbers/2
]).
:- use_module(session_knowledge).
:- use_module(library(aggregate)).

:- dynamic file_nlp/5.
:- dynamic project_concept/3.
:- dynamic concept_relation/3.
:- dynamic vocabulary_term/2.

% ============================================================================
% BUILD COMPLETE NLP MODEL
% ============================================================================

build_project_nlp_model :-
    writeln('🧠 BUILDING PROJECT NLP MODEL'),
    writeln('=============================='),
    nl,
    
    % 1. Find all files
    writeln('Step 1: Discovering files...'),
    find_all_project_files(Files),
    length(Files, FileCount),
    format('  ✓ Found ~w files~n~n', [FileCount]),
    
    % 2. Analyze each file with NLP
    writeln('Step 2: Analyzing files with NLP...'),
    analyze_all_files(Files),
    
    % 3. Extract vocabulary
    writeln('Step 3: Extracting vocabulary...'),
    extract_project_vocabulary(Vocab),
    length(Vocab, VocabSize),
    format('  ✓ Vocabulary: ~w terms~n~n', [VocabSize]),
    
    % 4. Build concept graph
    writeln('Step 4: Building concept graph...'),
    build_concept_graph(Graph),
    length(Graph, GraphSize),
    format('  ✓ Concept graph: ~w nodes~n~n', [GraphSize]),
    
    % 5. Generate report
    writeln('Step 5: Generating NLP report...'),
    generate_nlp_report,
    
    writeln('✅ PROJECT NLP MODEL COMPLETE'),
    nl.

% ============================================================================
% FILE DISCOVERY
% ============================================================================

find_all_project_files(Files) :-
    findall(
        File,
        (
            % Rust files
            expand_file_name('**/*.rs', RustFiles),
            member(File, RustFiles)
        ;
            % Prolog files
            expand_file_name('**/*.pl', PrologFiles),
            member(File, PrologFiles)
        ;
            % Lean files
            expand_file_name('**/*.lean', LeanFiles),
            member(File, LeanFiles)
        ;
            % Markdown files
            expand_file_name('**/*.md', MdFiles),
            member(File, MdFiles)
        ),
        AllFiles
    ),
    % Remove duplicates and target dirs
    include(not_in_target, AllFiles, Files).

not_in_target(File) :-
    \+ sub_string(File, _, _, _, 'target/'),
    \+ sub_string(File, _, _, _, '.git/').

% ============================================================================
% ANALYZE FILES
% ============================================================================

analyze_all_files(Files) :-
    length(Files, Total),
    analyze_files_progress(Files, 0, Total).

analyze_files_progress([], _, _).
analyze_files_progress([File|Rest], Current, Total) :-
    Next is Current + 1,
    
    % Progress indicator
    (   Next mod 10 =:= 0
    ->  format('  Progress: ~w/~w files...~n', [Next, Total])
    ;   true
    ),
    
    % Analyze file
    catch(
        analyze_single_file(File),
        Error,
        format('  ⚠️  Error analyzing ~w: ~w~n', [File, Error])
    ),
    
    analyze_files_progress(Rest, Next, Total).

analyze_single_file(File) :-
    % Read file content
    catch(
        read_file_to_string(File, Content, []),
        _,
        fail
    ),
    !,
    
    % Tokenize
    tokenize_text(Content, Tokens),
    
    % Extract concepts
    extract_concepts(Tokens, Concepts),
    
    % Extract entities
    extract_entities(Tokens, Entities),
    
    % Extract Monster primes
    extract_numbers(Content, Numbers),
    include(is_monster_prime, Numbers, MonsterPrimes),
    
    % Store analysis
    assertz(file_nlp(File, Tokens, Concepts, Entities, MonsterPrimes)),
    
    % Store concepts
    forall(
        member(Concept, Concepts),
        (
            \+ project_concept(Concept, _, _)
        ->  assertz(project_concept(Concept, [File], 1))
        ;   retract(project_concept(Concept, Files, Count)),
            Count1 is Count + 1,
            assertz(project_concept(Concept, [File|Files], Count1))
        )
    ).

analyze_single_file(_).

is_monster_prime(N) :-
    member(N, [2,3,5,7,11,13,17,19,23,29,31,41,47,59,71]).

% ============================================================================
% VOCABULARY EXTRACTION
% ============================================================================

extract_project_vocabulary(Vocab) :-
    % Collect all tokens
    findall(
        Token,
        (
            file_nlp(_, Tokens, _, _, _),
            member(Token, Tokens)
        ),
        AllTokens
    ),
    
    % Count frequencies
    findall(
        term(Token, Count),
        (
            member(Token, AllTokens),
            aggregate_all(count, member(Token, AllTokens), Count),
            Count > 1  % Filter rare terms
        ),
        Terms
    ),
    
    % Remove duplicates and sort by frequency
    sort(2, @>=, Terms, SortedTerms),
    
    % Store vocabulary
    forall(
        member(term(Token, Count), SortedTerms),
        assertz(vocabulary_term(Token, Count))
    ),
    
    Vocab = SortedTerms.

% ============================================================================
% CONCEPT GRAPH
% ============================================================================

build_concept_graph(Graph) :-
    % Find all concepts
    findall(Concept, project_concept(Concept, _, _), Concepts),
    
    % Build edges (concepts that co-occur in files)
    findall(
        edge(C1, C2, Weight),
        (
            project_concept(C1, Files1, _),
            project_concept(C2, Files2, _),
            C1 @< C2,  % Avoid duplicates
            intersection(Files1, Files2, Common),
            length(Common, Weight),
            Weight > 0
        ),
        Edges
    ),
    
    % Store relations
    forall(
        member(edge(C1, C2, Weight), Edges),
        assertz(concept_relation(C1, C2, Weight))
    ),
    
    Graph = Edges.

% ============================================================================
% GENERATE REPORT
% ============================================================================

generate_nlp_report :-
    open('project_nlp_model.txt', write, Stream),
    
    % Header
    writeln(Stream, '🧠 PROJECT NLP MODEL'),
    writeln(Stream, '==================='),
    writeln(Stream, ''),
    
    % Statistics
    aggregate_all(count, file_nlp(_, _, _, _, _), FileCount),
    aggregate_all(count, project_concept(_, _, _), ConceptCount),
    aggregate_all(count, vocabulary_term(_, _), VocabSize),
    aggregate_all(count, concept_relation(_, _, _), RelationCount),
    
    writeln(Stream, 'Statistics:'),
    format(Stream, '  Files analyzed: ~w~n', [FileCount]),
    format(Stream, '  Unique concepts: ~w~n', [ConceptCount]),
    format(Stream, '  Vocabulary size: ~w~n', [VocabSize]),
    format(Stream, '  Concept relations: ~w~n', [RelationCount]),
    writeln(Stream, ''),
    
    % Top concepts
    writeln(Stream, 'Top 20 Concepts:'),
    findall(
        Count-Concept,
        project_concept(Concept, _, Count),
        ConceptCounts
    ),
    sort(1, @>=, ConceptCounts, SortedConcepts),
    forall(
        (nth1(N, SortedConcepts, Count-Concept), N =< 20),
        format(Stream, '  ~w. ~w (~w files)~n', [N, Concept, Count])
    ),
    writeln(Stream, ''),
    
    % Top vocabulary
    writeln(Stream, 'Top 30 Terms:'),
    findall(
        Count-Term,
        vocabulary_term(Term, Count),
        VocabCounts
    ),
    sort(1, @>=, VocabCounts, SortedVocab),
    forall(
        (nth1(N, SortedVocab, Count-Term), N =< 30),
        format(Stream, '  ~w. ~w (~w occurrences)~n', [N, Term, Count])
    ),
    writeln(Stream, ''),
    
    % Monster primes found
    writeln(Stream, 'Monster Primes Found:'),
    findall(
        Prime-Files,
        (
            member(Prime, [2,3,5,7,11,13,17,19,23,29,31,41,47,59,71]),
            findall(F, file_nlp(F, _, _, _, Primes), AllFiles),
            include(has_prime(Prime), AllFiles, Files),
            Files \= []
        ),
        PrimeFiles
    ),
    forall(
        member(Prime-Files, PrimeFiles),
        (
            length(Files, Count),
            format(Stream, '  Prime ~w: ~w files~n', [Prime, Count])
        )
    ),
    writeln(Stream, ''),
    
    % Strongest concept relations
    writeln(Stream, 'Top 10 Concept Relations:'),
    findall(
        Weight-C1-C2,
        concept_relation(C1, C2, Weight),
        Relations
    ),
    sort(1, @>=, Relations, SortedRelations),
    forall(
        (nth1(N, SortedRelations, Weight-C1-C2), N =< 10),
        format(Stream, '  ~w. ~w ↔ ~w (weight: ~w)~n', [N, C1, C2, Weight])
    ),
    
    close(Stream),
    writeln('  ✓ Report: project_nlp_model.txt'),
    
    % Generate JSON
    generate_json_model,
    
    % Generate Prolog KB
    generate_prolog_model.

has_prime(Prime, File) :-
    file_nlp(File, _, _, _, Primes),
    member(Prime, Primes).

% ============================================================================
% EXPORT FORMATS
% ============================================================================

generate_json_model :-
    open('project_nlp_model.json', write, Stream),
    
    writeln(Stream, '{'),
    writeln(Stream, '  "project": "Monster",'),
    
    % Concepts
    writeln(Stream, '  "concepts": ['),
    findall(
        Concept,
        project_concept(Concept, _, _),
        Concepts
    ),
    write_json_array(Stream, Concepts),
    writeln(Stream, '  ],'),
    
    % Vocabulary
    writeln(Stream, '  "vocabulary": {'),
    findall(
        Term-Count,
        vocabulary_term(Term, Count),
        Vocab
    ),
    write_json_vocab(Stream, Vocab),
    writeln(Stream, '  }'),
    
    writeln(Stream, '}'),
    close(Stream),
    writeln('  ✓ JSON: project_nlp_model.json').

write_json_array(_, []).
write_json_array(Stream, [Item]) :-
    format(Stream, '    "~w"~n', [Item]).
write_json_array(Stream, [Item|Rest]) :-
    Rest \= [],
    format(Stream, '    "~w",~n', [Item]),
    write_json_array(Stream, Rest).

write_json_vocab(_, []).
write_json_vocab(Stream, [Term-Count]) :-
    format(Stream, '    "~w": ~w~n', [Term, Count]).
write_json_vocab(Stream, [Term-Count|Rest]) :-
    Rest \= [],
    format(Stream, '    "~w": ~w,~n', [Term, Count]),
    write_json_vocab(Stream, Rest).

generate_prolog_model :-
    open('project_nlp_model.pl', write, Stream),
    
    writeln(Stream, '% Project NLP Model - Generated'),
    writeln(Stream, ''),
    writeln(Stream, ':- module(project_nlp_model, []).'),
    writeln(Stream, ''),
    
    % Export all facts
    forall(
        file_nlp(File, Tokens, Concepts, Entities, Primes),
        (
            length(Tokens, TCount),
            length(Concepts, CCount),
            format(Stream, 'file_analyzed(~q, ~w, ~w).~n', [File, TCount, CCount])
        )
    ),
    
    writeln(Stream, ''),
    forall(
        project_concept(Concept, _, Count),
        format(Stream, 'concept(~q, ~w).~n', [Concept, Count])
    ),
    
    close(Stream),
    writeln('  ✓ Prolog: project_nlp_model.pl').

% ============================================================================
% MAIN ENTRY POINT
% ============================================================================

:- initialization(main, main).

main :-
    build_project_nlp_model,
    halt(0).
