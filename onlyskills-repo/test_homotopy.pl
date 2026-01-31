% Test Monster Lattice Homotopy
:- use_module(monster_lattice_homotopy).

test_homotopy :-
    writeln('🧪 Testing Monster Lattice Homotopy'),
    writeln('==================================='),
    nl,
    
    % Create test complexity
    C = complexity(
        file('test.pl'),
        language(prolog),
        dimensions([
            lines_of_code(100),
            cyclomatic(10),
            type_complexity(5),
            proof_depth(3),
            abstraction_level(7),
            monster_prime_usage(2)
        ]),
        total_score(25.5)
    ),
    
    writeln('Input Complexity:'),
    format('  File: test.pl~n'),
    format('  LOC: 100, Cyclomatic: 10, Type: 5~n'),
    format('  Proof: 3, Abstraction: 7, Primes: 2~n'),
    format('  Total Score: 25.5~n'),
    nl,
    
    % Compute homotopy type
    complexity_homotopy(C, H),
    
    writeln('Homotopy Type:'),
    format('  ~w~n', [H]),
    nl,
    
    % Compute invariants
    homotopy_invariant(H, euler_characteristic, Chi),
    format('Euler characteristic χ: ~w~n', [Chi]),
    
    homotopy_invariant(H, betti_numbers, Betti),
    format('Betti numbers β: ~w~n', [Betti]),
    
    homotopy_invariant(H, norm, Norm),
    format('Lattice norm: ~w~n', [Norm]),
    
    homotopy_invariant(H, shell, Shell),
    format('Lattice shell: ~w~n', [Shell]),
    
    nl,
    writeln('✓ Test complete').

:- initialization(test_homotopy, main).
