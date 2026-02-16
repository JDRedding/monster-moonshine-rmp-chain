% MiniZinc model: PTS/1 memory allocation optimization

% Processes using /dev/pts/1
enum Process = {kiro_cli, kiro_chat, bash, tmux};

% Memory regions
int: heap_size = 132;  % KB
int: stack_size = 148; % KB
int: total_memory = 280;

% Decision: which process contains "THIS TEXT"
array[Process] of var bool: contains_text;

% Each process has memory allocation
array[Process] of var 0..total_memory: memory_allocated;

% Constraints
constraint sum(memory_allocated) <= total_memory;
constraint memory_allocated[kiro_cli] >= heap_size;

% Fixed point: At least one process must contain the search text
constraint sum(contains_text) >= 1;

% Self-reference: kiro_cli searches for text it contains
constraint contains_text[kiro_cli] = true;

% Objective: minimize memory while maintaining self-reference
solve minimize sum(memory_allocated);

output [
  "PTS/1 Memory Allocation:\n",
  "  kiro_cli: \(memory_allocated[kiro_cli]) KB (contains: \(contains_text[kiro_cli]))\n",
  "  kiro_chat: \(memory_allocated[kiro_chat]) KB (contains: \(contains_text[kiro_chat]))\n",
  "  bash: \(memory_allocated[bash]) KB (contains: \(contains_text[bash]))\n",
  "  tmux: \(memory_allocated[tmux]) KB (contains: \(contains_text[tmux]))\n",
  "Total: \(sum(memory_allocated)) KB\n",
  "🎯 Fixed Point: kiro_cli searches its own memory\n"
];
