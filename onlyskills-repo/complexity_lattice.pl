% Lattice of Complexity for Zero Ontology
% Constructs partial order of complexity across languages and implementations
% EXTENDED: Hyperpolyglot + Multramate unification via Monster primes

:- module(complexity_lattice, [
    complexity_measure/3,
    lattice_order/2,
    construct_lattice/1,
    visualize_lattice/0,
    prime_harmonic/4,
    concept/4,
    multramate_concept/3,
    unify_concepts/4,
    concepts_at_prime/2,
    multramate_connects/3,
    measure_file_complexity/2
]).

:- dynamic complexity_measure/3.
:- dynamic lattice_order/2.

% Monster primes
monster_prime(P) :- monster_exponent(P, _).

% ============================================================================
% MONSTER PRIME HARMONICS (432 Hz base)
% ============================================================================

prime_harmonic(2, 864, binary_moon, '🌓').
prime_harmonic(3, 1296, binary_moon, '🔺').
prime_harmonic(5, 2160, binary_moon, '⭐').
prime_harmonic(7, 3024, binary_moon, '🎰').
prime_harmonic(11, 4752, binary_moon, '🎸').
prime_harmonic(13, 5616, wave_crest, '🌙').
prime_harmonic(17, 7344, wave_crest, '🎯').
prime_harmonic(19, 8208, wave_crest, '🎭').
prime_harmonic(23, 9936, wave_crest, '🧬').
prime_harmonic(29, 12528, wave_crest, '📅').
prime_harmonic(31, 13392, deep_resonance, '🎃').
prime_harmonic(41, 17712, deep_resonance, '🔮').
prime_harmonic(47, 20304, deep_resonance, '🎲').
prime_harmonic(59, 25488, deep_resonance, '⏰').
prime_harmonic(71, 30672, deep_resonance, '🌊').

monster_exponent(2, 46).
monster_exponent(3, 20).
monster_exponent(5, 9).
monster_exponent(7, 6).
monster_exponent(11, 2).
monster_exponent(13, 3).
monster_exponent(17, 1).
monster_exponent(19, 1).
monster_exponent(23, 1).
monster_exponent(29, 1).
monster_exponent(31, 1).
monster_exponent(41, 1).
monster_exponent(47, 1).
monster_exponent(59, 1).
monster_exponent(71, 1).

% ============================================================================
% HYPERPOLYGLOT CONCEPTS → PRIME MAPPING
% ============================================================================

concept(integer_arithmetic, 2, elementary, arithmetic).
concept(modular_arithmetic, 2, elementary, number_theory).
concept(prime_testing, 3, polynomial, number_theory).
concept(factorization, 3, exponential, number_theory).
concept(cyclic_groups, 5, elementary, group_theory).
concept(chinese_remainder, 5, polynomial, number_theory).
concept(permutations, 7, exponential, group_theory).
concept(factorial, 7, exponential, combinatorics).
concept(group_order, 11, polynomial, group_theory).
concept(multiplicative_order, 11, polynomial, number_theory).
concept(subgroups, 13, exponential, group_theory).
concept(primitive_roots, 13, polynomial, number_theory).
concept(symmetric_groups, 17, exponential, group_theory).
concept(discrete_log, 17, exponential, number_theory).
concept(homomorphisms, 19, polynomial, group_theory).
concept(elliptic_curves, 23, polynomial, algebraic_geometry).
concept(group_actions, 29, polynomial, group_theory).
concept(character_theory, 31, exponential, representation_theory).
concept(representations, 41, exponential, representation_theory).
concept(probabilistic_primality, 47, polynomial, number_theory).
concept(polynomial_factorization, 59, exponential, algebra).
concept(sporadic_groups, 71, exponential, group_theory).
concept(moonshine, 71, exponential, representation_theory).

% ============================================================================
% MULTRAMATE CONTRIBUTIONS
% ============================================================================

multramate_concept(weierstrass_equations, 23, elliptic_curves).
multramate_concept(group_law_elliptic, 23, elliptic_curves).
multramate_concept(torsion_points, 3, elliptic_curves).
multramate_concept(torsion_points, 5, elliptic_curves).
multramate_concept(torsion_points, 11, elliptic_curves).
multramate_concept(mordell_weil, 5, elliptic_curves).
multramate_concept(height_functions, 71, elliptic_curves).
multramate_concept(modular_forms, 71, moonshine).
multramate_concept(galois_representations, 31, character_theory).
multramate_concept(affine_coordinates, 23, elliptic_curves).
multramate_concept(jacobian_coordinates, 23, elliptic_curves).
multramate_concept(pairing_crypto, 23, elliptic_curves).
multramate_concept(finite_fields, 3, galois_theory).

% ============================================================================
% UNIFICATION RULES
% ============================================================================

% Concepts unify if they share prime and category
unify_concepts(ConceptA, ConceptB, Prime, Category) :-
    concept(ConceptA, Prime, _, Category),
    concept(ConceptB, Prime, _, Category),
    ConceptA \= ConceptB.

% Multramate connects to hyperpolyglot concept
multramate_connects(MulConcept, HyperConcept, Prime) :-
    multramate_concept(MulConcept, Prime, Domain),
    concept(HyperConcept, Prime, _, Category),
    (Domain = HyperConcept ; Category = Domain).

% Concepts at a given prime
concepts_at_prime(Prime, Concepts) :-
    findall(C, concept(C, Prime, _, _), Concepts).

% Concepts in harmonic class
harmonic_class_members(Class, Members) :-
    findall(Prime-Emoji, prime_harmonic(Prime, _, Class, Emoji), Members).

% ============================================================================

% Extension to language mapping
extension_to_language(pl, prolog).
extension_to_language(lean, lean4).
extension_to_language(agda, agda).
extension_to_language(v, coq).
extension_to_language(hs, haskell).
extension_to_language(rs, rust).
extension_to_language(py, python).

% Complexity dimensions
complexity_dimension(lines_of_code).
complexity_dimension(cyclomatic).
complexity_dimension(type_complexity).
complexity_dimension(proof_depth).
complexity_dimension(abstraction_level).
complexity_dimension(monster_prime_usage).

% Measure complexity of a file
measure_file_complexity(File, Complexity) :-
    writeln('📊 Measuring File Complexity'),
    format('File: ~w~n', [File]),
    nl,
    
    % Detect language from extension
    file_name_extension(_, Ext, File),
    extension_to_language(Ext, Lang),
    
    % Measure each dimension
    measure_lines_of_code(File, LOC),
    measure_cyclomatic(File, Lang, Cyclomatic),
    measure_type_complexity(File, Lang, TypeComplexity),
    measure_proof_depth(File, Lang, ProofDepth),
    measure_abstraction(File, Lang, Abstraction),
    measure_monster_prime_usage(File, PrimeUsage),
    
    % Aggregate complexity
    Complexity = complexity(
        file(File),
        language(Lang),
        dimensions([
            lines_of_code(LOC),
            cyclomatic(Cyclomatic),
            type_complexity(TypeComplexity),
            proof_depth(ProofDepth),
            abstraction_level(Abstraction),
            monster_prime_usage(PrimeUsage)
        ]),
        total_score(TotalScore)
    ),
    
    % Calculate total score (weighted sum)
    TotalScore is LOC * 0.1 + Cyclomatic * 0.2 + TypeComplexity * 0.2 + 
                  ProofDepth * 0.3 + Abstraction * 0.1 + PrimeUsage * 0.1,
    
    format('Total complexity score: ~w~n', [TotalScore]),
    
    % Store
    assert(complexity_measure(File, Lang, Complexity)).

% Measure lines of code
measure_lines_of_code(File, LOC) :-
    read_file_to_string(File, Content, []),
    split_string(Content, "\n", "", Lines),
    exclude(is_empty_or_comment, Lines, CodeLines),
    length(CodeLines, LOC).

is_empty_or_comment(Line) :-
    (   Line = ""
    ;   sub_string(Line, 0, _, _, "%")
    ;   sub_string(Line, 0, _, _, "--")
    ;   sub_string(Line, 0, _, _, "//")
    ;   sub_string(Line, 0, _, _, "#")
    ).

% Measure cyclomatic complexity
measure_cyclomatic(File, Lang, Cyclomatic) :-
    read_file_to_string(File, Content, []),
    
    % Count decision points
    findall(
        _,
        (
            decision_keyword(Lang, Keyword),
            sub_string(Content, _, _, _, Keyword)
        ),
        Decisions
    ),
    length(Decisions, DecisionCount),
    
    % Cyclomatic = decisions + 1
    Cyclomatic is DecisionCount + 1.

decision_keyword(prolog, ":-").
decision_keyword(prolog, ";").
decision_keyword(lean4, "if").
decision_keyword(lean4, "match").
decision_keyword(coq, "match").
decision_keyword(coq, "if").
decision_keyword(haskell, "case").
decision_keyword(haskell, "if").
decision_keyword(rust, "if").
decision_keyword(rust, "match").

% Measure type complexity
measure_type_complexity(File, Lang, TypeComplexity) :-
    read_file_to_string(File, Content, []),
    
    % Count type definitions
    findall(
        _,
        (
            type_keyword(Lang, Keyword),
            sub_string(Content, _, _, _, Keyword)
        ),
        Types
    ),
    length(Types, TypeCount),
    
    % Count generic/polymorphic types
    findall(
        _,
        (
            generic_marker(Lang, Marker),
            sub_string(Content, _, _, _, Marker)
        ),
        Generics
    ),
    length(Generics, GenericCount),
    
    TypeComplexity is TypeCount + GenericCount * 2.

type_keyword(prolog, ":-").
type_keyword(lean4, "structure").
type_keyword(lean4, "inductive").
type_keyword(coq, "Inductive").
type_keyword(coq, "Record").
type_keyword(haskell, "data").
type_keyword(haskell, "type").
type_keyword(rust, "struct").
type_keyword(rust, "enum").

generic_marker(lean4, "∀").
generic_marker(coq, "forall").
generic_marker(haskell, "=>").
generic_marker(rust, "<").

% Measure proof depth
measure_proof_depth(File, Lang, ProofDepth) :-
    (   proof_language(Lang)
    ->  read_file_to_string(File, Content, []),
        findall(
            _,
            (
                proof_keyword(Lang, Keyword),
                sub_string(Content, _, _, _, Keyword)
            ),
            Proofs
        ),
        length(Proofs, ProofDepth)
    ;   ProofDepth = 0
    ).

proof_language(lean4).
proof_language(coq).
proof_language(agda).

proof_keyword(lean4, "theorem").
proof_keyword(lean4, "lemma").
proof_keyword(coq, "Theorem").
proof_keyword(coq, "Lemma").
proof_keyword(coq, "Proof").
proof_keyword(agda, "≡").

% Measure abstraction level
measure_abstraction(File, Lang, Abstraction) :-
    abstraction_score(Lang, BaseScore),
    
    % Adjust based on file content
    read_file_to_string(File, Content, []),
    
    % Higher abstraction if uses advanced features
    (   sub_string(Content, _, _, _, "meta")
    ->  MetaBonus = 2
    ;   MetaBonus = 0
    ),
    
    (   sub_string(Content, _, _, _, "monad")
    ->  MonadBonus = 1
    ;   MonadBonus = 0
    ),
    
    Abstraction is BaseScore + MetaBonus + MonadBonus.

abstraction_score(prolog, 3).
abstraction_score(lean4, 9).
abstraction_score(agda, 9).
abstraction_score(coq, 8).
abstraction_score(haskell, 7).
abstraction_score(rust, 5).

% Measure Monster prime usage
measure_monster_prime_usage(File, PrimeUsage) :-
    read_file_to_string(File, Content, []),
    
    findall(
        P,
        (
            monster_prime(P),
            number_string(P, PStr),
            sub_string(Content, _, _, _, PStr)
        ),
        UsedPrimes
    ),
    
    length(UsedPrimes, PrimeUsage).

% Construct complexity lattice
construct_lattice(Lattice) :-
    writeln('🔺 Constructing Complexity Lattice'),
    writeln('==================================='),
    nl,
    
    % Measure all files
    expand_file_name('*.{pl,lean,agda,v,hs,rs}', Files),
    forall(member(File, Files), measure_file_complexity(File, _)),
    
    % Build partial order
    findall(
        File1-File2,
        (
            complexity_measure(File1, _, C1),
            complexity_measure(File2, _, C2),
            less_complex(C1, C2)
        ),
        Orders
    ),
    
    % Store orders
    forall(member(F1-F2, Orders), assert(lattice_order(F1, F2))),
    
    % Build lattice structure
    findall(File, complexity_measure(File, _, _), AllFiles),
    build_lattice_levels(AllFiles, Levels),
    
    Lattice = lattice(
        files(AllFiles),
        orders(Orders),
        levels(Levels)
    ),
    
    format('Lattice constructed: ~w files, ~w orders~n', [length(AllFiles), length(Orders)]).

% Compare complexity
less_complex(C1, C2) :-
    C1 = complexity(_, _, _, total_score(S1)),
    C2 = complexity(_, _, _, total_score(S2)),
    S1 < S2.

% Build lattice levels (topological sort)
build_lattice_levels(Files, Levels) :-
    % Level 0: minimal elements (no predecessors)
    findall(
        File,
        (
            member(File, Files),
            \+ lattice_order(_, File)
        ),
        Level0
    ),
    
    % Build remaining levels
    build_levels([Level0], Files, Levels).

build_levels(Acc, Files, Levels) :-
    Acc = [CurrentLevel|_],
    
    % Find next level (successors of current level)
    findall(
        File,
        (
            member(File, Files),
            \+ member(File, CurrentLevel),
            lattice_order(Pred, File),
            member(Pred, CurrentLevel)
        ),
        NextLevel
    ),
    
    (   NextLevel = []
    ->  reverse(Acc, Levels)
    ;   build_levels([NextLevel|Acc], Files, Levels)
    ).

% Visualize lattice
visualize_lattice :-
    writeln('📊 Complexity Lattice Visualization'),
    writeln('===================================='),
    nl,
    
    construct_lattice(lattice(Files, Orders, Levels)),
    
    % Display levels
    forall(
        nth1(LevelNum, Levels, Level),
        (
            format('Level ~w:~n', [LevelNum]),
            forall(
                member(File, Level),
                (
                    complexity_measure(File, Lang, complexity(_, _, _, total_score(Score))),
                    format('  ~w (~w): ~w~n', [File, Lang, Score])
                )
            ),
            nl
        )
    ),
    
    % Display partial order
    writeln('Partial Order (less complex → more complex):'),
    forall(
        lattice_order(F1, F2),
        (
            complexity_measure(F1, _, complexity(_, _, _, total_score(S1))),
            complexity_measure(F2, _, complexity(_, _, _, total_score(S2))),
            format('  ~w (~w) < ~w (~w)~n', [F1, S1, F2, S2])
        )
    ).

% Query lattice
least_complex(File) :-
    complexity_measure(File, _, complexity(_, _, _, total_score(Score))),
    \+ (
        complexity_measure(_, _, complexity(_, _, _, total_score(S2))),
        S2 < Score
    ).

most_complex(File) :-
    complexity_measure(File, _, complexity(_, _, _, total_score(Score))),
    \+ (
        complexity_measure(_, _, complexity(_, _, _, total_score(S2))),
        S2 > Score
    ).

% Example queries:
% ?- construct_lattice(Lattice).
% ?- visualize_lattice.
% ?- least_complex(File).
% ?- most_complex(File).
% ?- lattice_order(F1, F2).
