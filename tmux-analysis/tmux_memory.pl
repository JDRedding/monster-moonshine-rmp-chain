% Tmux Memory Model in Prolog
% Parsed from /proc/<pid>/maps and memory stats

:- module(tmux_memory, [
    memory_region/5,
    memory_stats/2,
    analyze_memory/0
]).

% Memory regions: region(Start, End, Perms, Type, Size)
memory_region(0x575d72640000, 0x575d72659000, 'r--p', text_ro, 102400).
memory_region(0x575d72659000, 0x575d726f0000, 'r-xp', text_exec, 618496).
memory_region(0x575d726f0000, 0x575d7271b000, 'r--p', text_ro, 176128).
memory_region(0x575d7271c000, 0x575d7272c000, 'r--p', data_ro, 65536).
memory_region(0x575d7272c000, 0x575d7272e000, 'rw-p', data_rw, 8192).
memory_region(0x575d8ba81000, 0x575d8baa2000, 'rw-p', heap, 135168).
memory_region(0x575d8baa2000, 0x575d8c045000, 'rw-p', heap, 5910528).
memory_region(0x76932f000000, 0x76932f028000, 'r--p', libc_ro, 163840).
memory_region(0x76932f028000, 0x76932f1bd000, 'r-xp', libc_exec, 1691648).
memory_region(0x7ffda8cc8000, 0x7ffda8ce9000, 'rw-p', stack, 135168).

% Memory statistics (KB)
memory_stats(vm_size, 13956).
memory_stats(vm_rss, 6032).
memory_stats(rss_anon, 2768).
memory_stats(rss_file, 3264).
memory_stats(vm_data, 6064).
memory_stats(vm_stk, 132).
memory_stats(vm_exe, 604).
memory_stats(vm_lib, 2524).
memory_stats(vm_swap, 976).

% Memory layout analysis
memory_layout(text, Regions) :-
    findall(region(Start, End, Size), 
            (memory_region(Start, End, Perms, Type, Size),
             member(Type, [text_ro, text_exec])),
            Regions).

memory_layout(heap, Regions) :-
    findall(region(Start, End, Size),
            memory_region(Start, End, _, heap, Size),
            Regions).

memory_layout(stack, Regions) :-
    findall(region(Start, End, Size),
            memory_region(Start, End, _, stack, Size),
            Regions).

memory_layout(libs, Regions) :-
    findall(region(Start, End, Size),
            (memory_region(Start, End, Perms, Type, Size),
             member(Type, [libc_ro, libc_exec])),
            Regions).

% Calculate total size by type
total_size(Type, Total) :-
    findall(Size, memory_region(_, _, _, Type, Size), Sizes),
    sum_list(Sizes, Total).

% Memory efficiency
memory_efficiency(Efficiency) :-
    memory_stats(vm_rss, RSS),
    memory_stats(vm_size, VSize),
    Efficiency is (RSS / VSize) * 100.

% Heap fragmentation estimate
heap_fragmentation(Fragments) :-
    findall(1, memory_region(_, _, _, heap, _), Frags),
    length(Frags, Fragments).

% Generate PlantUML memory diagram
generate_memory_diagram(File) :-
    open(File, write, Stream),
    writeln(Stream, '@startuml'),
    writeln(Stream, 'title Tmux Memory Layout'),
    writeln(Stream, ''),
    writeln(Stream, 'package "Process Memory" {'),
    writeln(Stream, '  [Text Segment] #lightblue'),
    writeln(Stream, '  [Data Segment] #lightgreen'),
    writeln(Stream, '  [Heap] #yellow'),
    writeln(Stream, '  [Libraries] #lightgray'),
    writeln(Stream, '  [Stack] #orange'),
    writeln(Stream, '}'),
    writeln(Stream, ''),
    writeln(Stream, '[Text Segment] --> [Data Segment]'),
    writeln(Stream, '[Data Segment] --> [Heap]'),
    writeln(Stream, '[Heap] ..> [Libraries]'),
    writeln(Stream, '[Libraries] ..> [Stack]'),
    writeln(Stream, ''),
    writeln(Stream, 'note right of [Text Segment]'),
    total_size(text_exec, TextSize),
    format(Stream, '  Code: ~d KB~n', [TextSize]),
    writeln(Stream, 'end note'),
    writeln(Stream, ''),
    writeln(Stream, 'note right of [Heap]'),
    total_size(heap, HeapSize),
    format(Stream, '  Size: ~d KB~n', [HeapSize]),
    heap_fragmentation(Frags),
    format(Stream, '  Fragments: ~d~n', [Frags]),
    writeln(Stream, 'end note'),
    writeln(Stream, ''),
    writeln(Stream, '@enduml'),
    close(Stream).

% Analyze memory
analyze_memory :-
    writeln('🧠 Tmux Memory Model Analysis'),
    writeln('============================='),
    nl,
    
    % Stats
    writeln('Memory Statistics:'),
    memory_stats(vm_size, VSize),
    format('  Virtual Size: ~d KB~n', [VSize]),
    memory_stats(vm_rss, RSS),
    format('  Resident Set: ~d KB~n', [RSS]),
    memory_efficiency(Eff),
    format('  Efficiency: ~2f%~n', [Eff]),
    nl,
    
    % Layout
    writeln('Memory Layout:'),
    total_size(text_exec, TextSize),
    format('  Text: ~d KB~n', [TextSize]),
    total_size(heap, HeapSize),
    format('  Heap: ~d KB~n', [HeapSize]),
    memory_stats(vm_stk, StackSize),
    format('  Stack: ~d KB~n', [StackSize]),
    total_size(libc_exec, LibSize),
    format('  Libraries: ~d KB~n', [LibSize]),
    nl,
    
    % Heap
    writeln('Heap Analysis:'),
    heap_fragmentation(Frags),
    format('  Fragments: ~d~n', [Frags]),
    format('  Total Size: ~d KB~n', [HeapSize]),
    nl,
    
    % Generate diagram
    generate_memory_diagram('tmux_memory_layout.puml'),
    writeln('✅ Generated: tmux_memory_layout.puml').

:- initialization(analyze_memory).
