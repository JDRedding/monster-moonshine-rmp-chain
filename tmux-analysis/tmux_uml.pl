% Tmux UML Model Generator from Trace Data
% Builds UML state machine and sequence diagrams

:- module(tmux_uml, [
    parse_trace/1,
    generate_uml/0,
    state_machine/1,
    sequence_diagram/1
]).

% Parse register state
register_state(rax, 0xfffffffffffffdfc).
register_state(rbx, 0x575d8ba91860).
register_state(rcx, 0x76932f118c07).
register_state(rdx, 0x39a7).  % timeout = 14759
register_state(rsi, 0x9).     % nfds = 9
register_state(rdi, 0x575d8ba91670).  % fds pointer
register_state(rip, 0x76932f118c07).  % in __poll

% Parse syscalls from strace
syscall(poll, 323, event_loop).
syscall(writev, 179, output).
syscall(ioctl, 149, control).
syscall(readv, 119, input).
syscall(read, 30, input).
syscall(openat, 30, file_ops).
syscall(close, 30, file_ops).

% File descriptors
fd(3, server_socket).
fd(5, terminal_1).
fd(6, terminal_2).
fd(7, terminal_3).
fd(8, control_socket).
fd(9, status_bar).
fd(10, output_buffer).
fd(11, input_buffer).
fd(12, log_file).

% Call stack
call_stack([
    '__poll',
    'libevent_core',
    'event_base_loop',
    'tmux_main',
    '__libc_start_main'
]).

% State machine states
state(idle).
state(waiting_input).
state(processing_input).
state(rendering_output).
state(updating_status).

% State transitions
transition(idle, input_ready, processing_input).
transition(processing_input, output_ready, rendering_output).
transition(rendering_output, status_update, updating_status).
transition(updating_status, complete, idle).
transition(idle, timeout, waiting_input).
transition(waiting_input, input_ready, processing_input).

% UML Classes
class(tmux_server, [
    attributes([pid, fds, clients]),
    methods([poll_events, process_input, render_output])
]).

class(event_loop, [
    attributes([timeout, nfds, poll_fds]),
    methods([wait_events, dispatch_events])
]).

class(terminal, [
    attributes([fd, buffer, cursor]),
    methods([read_input, write_output, update_screen])
]).

class(client, [
    attributes([session_id, window_id, pane_id]),
    methods([attach, detach, send_keys])
]).

% Sequence diagram
sequence(user_input, [
    step(user, terminal, 'keystroke'),
    step(terminal, event_loop, 'fd_ready(7)'),
    step(event_loop, tmux_server, 'process_input'),
    step(tmux_server, terminal, 'readv(7)'),
    step(tmux_server, terminal, 'writev(7)'),
    step(terminal, user, 'display')
]).

% Generate PlantUML state machine
generate_state_machine(File) :-
    open(File, write, Stream),
    writeln(Stream, '@startuml'),
    writeln(Stream, 'title Tmux State Machine'),
    writeln(Stream, ''),
    writeln(Stream, '[*] --> idle'),
    forall(state(S), format(Stream, 'state ~w~n', [S])),
    writeln(Stream, ''),
    forall(transition(From, Event, To), 
           format(Stream, '~w --> ~w : ~w~n', [From, To, Event])),
    writeln(Stream, ''),
    writeln(Stream, '@enduml'),
    close(Stream).

% Generate PlantUML class diagram
generate_class_diagram(File) :-
    open(File, write, Stream),
    writeln(Stream, '@startuml'),
    writeln(Stream, 'title Tmux Class Diagram'),
    writeln(Stream, ''),
    forall(class(Name, Props), (
        format(Stream, 'class ~w {~n', [Name]),
        member(attributes(Attrs), Props),
        forall(member(A, Attrs), format(Stream, '  +~w~n', [A])),
        member(methods(Methods), Props),
        forall(member(M, Methods), format(Stream, '  +~w()~n', [M])),
        writeln(Stream, '}'),
        writeln(Stream, '')
    )),
    writeln(Stream, 'tmux_server --> event_loop'),
    writeln(Stream, 'tmux_server --> terminal'),
    writeln(Stream, 'tmux_server --> client'),
    writeln(Stream, ''),
    writeln(Stream, '@enduml'),
    close(Stream).

% Generate PlantUML sequence diagram
generate_sequence_diagram(File) :-
    open(File, write, Stream),
    writeln(Stream, '@startuml'),
    writeln(Stream, 'title Tmux User Input Sequence'),
    writeln(Stream, ''),
    sequence(user_input, Steps),
    forall(member(step(From, To, Msg), Steps),
           format(Stream, '~w -> ~w : ~w~n', [From, To, Msg])),
    writeln(Stream, ''),
    writeln(Stream, '@enduml'),
    close(Stream).

% Generate all UML diagrams
generate_uml :-
    generate_state_machine('tmux_state_machine.puml'),
    generate_class_diagram('tmux_class_diagram.puml'),
    generate_sequence_diagram('tmux_sequence_diagram.puml'),
    writeln('✅ Generated UML diagrams:'),
    writeln('  - tmux_state_machine.puml'),
    writeln('  - tmux_class_diagram.puml'),
    writeln('  - tmux_sequence_diagram.puml').

% Analyze register patterns
analyze_registers :-
    writeln('📊 Register Analysis:'),
    writeln(''),
    writeln('Key Registers:'),
    register_state(rdi, FdsPtr),
    format('  RDI (fds pointer): 0x~16r~n', [FdsPtr]),
    register_state(rsi, Nfds),
    format('  RSI (nfds): ~d~n', [Nfds]),
    register_state(rdx, Timeout),
    format('  RDX (timeout): ~d ms~n', [Timeout]),
    register_state(rip, Rip),
    format('  RIP (instruction): 0x~16r (__poll)~n', [Rip]),
    writeln(''),
    writeln('State: Blocked in poll() waiting for I/O').

% Main entry point
run_analysis :-
    writeln('🔍 Tmux UML Model Generator'),
    writeln('==========================='),
    nl,
    analyze_registers,
    nl,
    generate_uml,
    nl,
    writeln('✅ Analysis complete!').

:- initialization(run_analysis).
