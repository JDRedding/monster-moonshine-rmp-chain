% High-speed .git/config inode collector
% Scans filesystem and extracts all .git/config inodes directly in memory

:- use_module(library(filesex)).
:- use_module(library(lists)).

% Inode fact: inode(Path, InodeNumber, Size, Blocks, Links, Shard)
:- dynamic inode/6.

% Get inode info for a file
get_inode_info(Path, Inode, Size, Blocks, Links) :-
    exists_file(Path),
    size_file(Path, Size),
    % Use stat to get inode info
    format(atom(Cmd), 'stat -c "%i %b %h" "~w"', [Path]),
    setup_call_cleanup(
        open(pipe(Cmd), read, Stream),
        read_line_to_string(Stream, Line),
        close(Stream)
    ),
    split_string(Line, " ", "", [IStr, BStr, LStr]),
    number_string(Inode, IStr),
    number_string(Blocks, BStr),
    number_string(Links, LStr).

% Compute shard (0-70)
compute_shard(Inode, Size, Blocks, Links, Shard) :-
    Shard is (Inode + Size + Blocks + Links) mod 71.

% Scan directory for .git/config files
scan_for_git_configs(Root) :-
    retractall(inode(_, _, _, _, _, _)),
    format('🔍 Scanning ~w for .git/config files...~n', [Root]),
    scan_recursive(Root, 0, Count),
    format('✅ Found ~w .git/config files~n', [Count]).

% Recursive scan
scan_recursive(Path, CountIn, CountOut) :-
    atom_concat(_, '/config', Path),
    atom_concat(Base, '/config', Path),
    atom_concat(_, '/.git', Base),
    exists_file(Path),
    !,
    (   get_inode_info(Path, Inode, Size, Blocks, Links)
    ->  compute_shard(Inode, Size, Blocks, Links, Shard),
        assertz(inode(Path, Inode, Size, Blocks, Links, Shard)),
        format('  Found: ~w (inode: ~w, shard: ~w)~n', [Path, Inode, Shard]),
        CountOut is CountIn + 1
    ;   CountOut = CountIn
    ).

scan_recursive(Path, CountIn, CountOut) :-
    exists_directory(Path),
    \+ atom_concat(_, '/.git/', Path),  % Don't recurse deep into .git
    !,
    catch(
        (directory_files(Path, Files),
         scan_files(Path, Files, CountIn, CountOut)),
        _,
        CountOut = CountIn
    ).

scan_recursive(_, Count, Count).

% Scan list of files
scan_files(_, [], Count, Count).
scan_files(Dir, [File|Rest], CountIn, CountOut) :-
    \+ member(File, ['.', '..']),
    atomic_list_concat([Dir, '/', File], Path),
    scan_recursive(Path, CountIn, CountMid),
    scan_files(Dir, Rest, CountMid, CountOut).
scan_files(Dir, [_|Rest], CountIn, CountOut) :-
    scan_files(Dir, Rest, CountIn, CountOut).

% Find all .git/config files
find_git_configs(Root) :-
    format('~n🚀 High-Speed .git/config Inode Collector~n'),
    format('==========================================~n~n'),
    get_time(Start),
    scan_for_git_configs(Root),
    get_time(End),
    Time is End - Start,
    format('~n⏱️  Time: ~3f seconds~n~n', [Time]).

% Show statistics
show_stats :-
    findall(Shard, inode(_, _, _, _, _, Shard), Shards),
    length(Shards, Total),
    sort(Shards, UniqueShards),
    length(UniqueShards, Unique),
    format('📊 Statistics:~n'),
    format('   Total inodes: ~w~n', [Total]),
    format('   Unique shards: ~w/71~n', [Unique]),
    format('   Coverage: ~2f%~n', [Unique / 71 * 100]).

% Show all inodes
show_inodes :-
    format('~n📄 Inode List:~n'),
    forall(
        inode(Path, Inode, Size, Blocks, Links, Shard),
        format('   ~w → inode:~w size:~w shard:~w~n', [Path, Inode, Size, Shard])
    ).

% Export to facts file
export_facts(File) :-
    open(File, write, Stream),
    forall(
        inode(Path, Inode, Size, Blocks, Links, Shard),
        format(Stream, 'git_config_inode(~q, ~w, ~w, ~w, ~w, ~w).~n', 
               [Path, Inode, Size, Blocks, Links, Shard])
    ),
    close(Stream),
    format('✅ Exported to ~w~n', [File]).

% Main entry point
main :-
    find_git_configs('.'),
    show_stats,
    show_inodes,
    export_facts('git_config_inodes.pl'),
    halt.

% Interactive query
query_shard(Shard) :-
    format('~nFiles in shard ~w:~n', [Shard]),
    forall(
        inode(Path, Inode, _, _, _, Shard),
        format('  ~w (inode: ~w)~n', [Path, Inode])
    ).

% Query by inode
query_inode(Inode) :-
    inode(Path, Inode, Size, Blocks, Links, Shard),
    format('~nInode ~w:~n', [Inode]),
    format('  Path: ~w~n', [Path]),
    format('  Size: ~w bytes~n', [Size]),
    format('  Blocks: ~w~n', [Blocks]),
    format('  Links: ~w~n', [Links]),
    format('  Shard: ~w~n', [Shard]).

% Usage examples:
% ?- find_git_configs('.').
% ?- show_stats.
% ?- show_inodes.
% ?- query_shard(32).
% ?- query_inode(12345).
% ?- export_facts('git_config_inodes.pl').
