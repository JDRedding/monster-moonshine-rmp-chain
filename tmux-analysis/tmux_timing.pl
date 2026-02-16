% Tmux Timing Diagram: Code + Memory + Trace
% Connects execution trace with memory accesses

:- module(tmux_timing, [
    generate_timing_diagram/0
]).

% Parse strace timing data
trace_event(0.000044, poll, entry, [fd_count(9), timeout(14759)]).
trace_event(0.000055, poll, exit, [result(1), fd(7)]).
trace_event(0.000066, ioctl, entry, [fd(8), cmd('FIONREAD')]).
trace_event(0.000077, ioctl, exit, [result(0), bytes(34)]).
trace_event(0.000088, readv, entry, [fd(8), len(34)]).
trace_event(0.000100, readv, exit, [result(34), buffer(0x575d8ba91670)]).
trace_event(0.000111, writev, entry, [fd(7), len(108)]).
trace_event(0.000125, writev, exit, [result(108)]).

% Memory access patterns
memory_access(0.000100, read, 0x575d8ba91670, 34, heap).
memory_access(0.000125, write, 0x575d8ba91860, 108, heap).
memory_access(0.000150, read, 0x7ffda8ce6478, 8, stack).

% Code execution (from registers + backtrace)
code_execution(0.000044, '__poll', 0x76932f118c07, libc).
code_execution(0.000055, 'libevent_core', 0x76932f4a1309, lib).
code_execution(0.000066, 'event_base_loop', 0x76932f49c921, lib).
code_execution(0.000077, 'tmux_main', 0x575d7265c19f, text).

% Register state at key points
register_snapshot(0.000044, [
    reg(rdi, 0x575d8ba91670, fds_pointer),
    reg(rsi, 9, nfds),
    reg(rdx, 14759, timeout),
    reg(rip, 0x76932f118c07, instruction_pointer)
]).

% Generate PlantUML timing diagram
generate_timing_diagram :-
    open('tmux_timing_diagram.puml', write, Stream),
    
    writeln(Stream, '@startuml'),
    writeln(Stream, 'title Tmux Execution Timeline (Code + Memory + Trace)'),
    writeln(Stream, 'scale 1000 as 100 pixels'),
    writeln(Stream, ''),
    
    % Participants
    writeln(Stream, 'participant "User" as user'),
    writeln(Stream, 'participant "Kernel" as kernel'),
    writeln(Stream, 'participant "poll()" as poll'),
    writeln(Stream, 'participant "libevent" as libevent'),
    writeln(Stream, 'participant "tmux" as tmux'),
    writeln(Stream, 'participant "Heap\\n0x575d8ba91670" as heap'),
    writeln(Stream, 'participant "Stack\\n0x7ffda8ce6478" as stack'),
    writeln(Stream, ''),
    
    % Timeline
    writeln(Stream, 'user -> kernel : keystroke'),
    writeln(Stream, 'activate kernel'),
    writeln(Stream, ''),
    
    writeln(Stream, 'kernel -> poll : fd_ready(7)'),
    writeln(Stream, 'activate poll'),
    writeln(Stream, 'note right: RDI=0x575d8ba91670\\nRSI=9\\nRDX=14759ms'),
    writeln(Stream, 'poll -> poll : wait 0.044ms'),
    writeln(Stream, 'poll --> kernel : return 1'),
    writeln(Stream, 'deactivate poll'),
    writeln(Stream, ''),
    
    writeln(Stream, 'kernel -> libevent : dispatch_event'),
    writeln(Stream, 'activate libevent'),
    writeln(Stream, 'libevent -> tmux : process_input'),
    writeln(Stream, 'activate tmux'),
    writeln(Stream, ''),
    
    writeln(Stream, 'tmux -> kernel : ioctl(8, FIONREAD)'),
    writeln(Stream, 'kernel --> tmux : 34 bytes'),
    writeln(Stream, ''),
    
    writeln(Stream, 'tmux -> heap : readv(34 bytes)'),
    writeln(Stream, 'activate heap'),
    writeln(Stream, 'note right: Read from\\n0x575d8ba91670'),
    writeln(Stream, 'heap --> tmux : data'),
    writeln(Stream, 'deactivate heap'),
    writeln(Stream, ''),
    
    writeln(Stream, 'tmux -> stack : push registers'),
    writeln(Stream, 'activate stack'),
    writeln(Stream, 'note right: RSP=0x7ffda8ce6478'),
    writeln(Stream, 'stack --> tmux : ok'),
    writeln(Stream, 'deactivate stack'),
    writeln(Stream, ''),
    
    writeln(Stream, 'tmux -> heap : writev(108 bytes)'),
    writeln(Stream, 'activate heap'),
    writeln(Stream, 'note right: Write to\\n0x575d8ba91860'),
    writeln(Stream, 'heap --> tmux : ok'),
    writeln(Stream, 'deactivate heap'),
    writeln(Stream, ''),
    
    writeln(Stream, 'tmux -> kernel : writev(7, 108)'),
    writeln(Stream, 'kernel --> tmux : 108'),
    writeln(Stream, 'deactivate tmux'),
    writeln(Stream, 'deactivate libevent'),
    writeln(Stream, ''),
    
    writeln(Stream, 'kernel -> user : display'),
    writeln(Stream, 'deactivate kernel'),
    writeln(Stream, ''),
    
    % Timing annotations
    writeln(Stream, 'note over poll'),
    writeln(Stream, '  Time: 0.044ms'),
    writeln(Stream, '  Syscall: poll()'),
    writeln(Stream, '  Memory: Stack'),
    writeln(Stream, 'end note'),
    writeln(Stream, ''),
    
    writeln(Stream, 'note over heap'),
    writeln(Stream, '  Read: 34 bytes'),
    writeln(Stream, '  Write: 108 bytes'),
    writeln(Stream, '  Total: 142 bytes'),
    writeln(Stream, 'end note'),
    writeln(Stream, ''),
    
    writeln(Stream, '@enduml'),
    close(Stream),
    
    writeln('✅ Generated: tmux_timing_diagram.puml').

% Generate detailed trace table
generate_trace_table :-
    open('tmux_trace_table.txt', write, Stream),
    
    writeln(Stream, 'Tmux Execution Trace with Memory Access'),
    writeln(Stream, '========================================'),
    writeln(Stream, ''),
    format(Stream, '~w ~w ~w ~w ~w~n', 
           ['Time(ms)', 'Syscall', 'Memory', 'Address', 'Size']),
    writeln(Stream, '--------------------------------------------------------'),
    
    writeln(Stream, '0.044   poll       stack    0x7ffda8ce6478   8'),
    writeln(Stream, '0.066   ioctl      -        -                -'),
    writeln(Stream, '0.100   readv      heap     0x575d8ba91670   34'),
    writeln(Stream, '0.125   writev     heap     0x575d8ba91860   108'),
    
    writeln(Stream, ''),
    writeln(Stream, 'Register State at poll():'),
    writeln(Stream, '  RDI (fds): 0x575d8ba91670'),
    writeln(Stream, '  RSI (nfds): 9'),
    writeln(Stream, '  RDX (timeout): 14759 ms'),
    writeln(Stream, '  RIP (pc): 0x76932f118c07'),
    writeln(Stream, ''),
    writeln(Stream, 'Memory Regions:'),
    writeln(Stream, '  Heap: 0x575d8ba81000-0x575d8c045000 (5.9 MB)'),
    writeln(Stream, '  Stack: 0x7ffda8cc8000-0x7ffda8ce9000 (132 KB)'),
    writeln(Stream, '  Text: 0x575d72659000-0x575d726f0000 (604 KB)'),
    
    close(Stream),
    writeln('✅ Generated: tmux_trace_table.txt').

% Main entry
run_timing_analysis :-
    writeln('⏱️  Tmux Timing Diagram Generator'),
    writeln('================================='),
    nl,
    generate_timing_diagram,
    generate_trace_table,
    nl,
    writeln('✅ Complete! Files:'),
    writeln('  - tmux_timing_diagram.puml'),
    writeln('  - tmux_trace_table.txt').

:- initialization(run_timing_analysis).
