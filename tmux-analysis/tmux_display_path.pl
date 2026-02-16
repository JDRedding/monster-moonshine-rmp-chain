% Prolog model: THIS TEXT display path
% Memory → Buffer → Syscall → Terminal



% Memory addresses where "THIS TEXT" found
text_location(0x575d8be97b77, heap, screen_buffer).
text_location(0x575d8be97da8, heap, history_buffer).
text_location(0x575d8bec500c, heap, pane_data).

% Display path
display_path(memory_read, buffer_copy, writev_call, terminal_output).

% Syscall for output
syscall(writev, fd(1), buffer(screen), bytes(34)).

% Generate PlantUML
generate_display_diagram :-
    open('tmux_display_path.puml', write, Out),
    format(Out, '@startuml~n', []),
    format(Out, 'title THIS TEXT Display Path~n~n', []),
    format(Out, 'participant "Heap\\n0x575d8be97b77" as Heap~n', []),
    format(Out, 'participant "Screen Buffer" as Buffer~n', []),
    format(Out, 'participant "writev()" as Writev~n', []),
    format(Out, 'participant "Terminal" as Term~n~n', []),
    format(Out, 'Heap -> Buffer: Read "THIS TEXT"~n', []),
    format(Out, 'Buffer -> Writev: Write 34 bytes~n', []),
    format(Out, 'Writev -> Term: Display to screen~n', []),
    format(Out, '@enduml~n', []),
    close(Out).

:- initialization((generate_display_diagram, halt)).
