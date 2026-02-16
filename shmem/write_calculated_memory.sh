#!/bin/bash
# Write to calculated memory address from MiniZinc

# Run MiniZinc to get optimal allocation
RESULT=$(nix-shell -p minizinc --run "minizinc /home/mdupont/experiments/monster/minizinc/pts_memory.mzn 2>/dev/null" | grep "kiro_cli:")

echo "MiniZinc result: $RESULT"

# Get kiro-cli PID
KIRO_PID=$(lsof /dev/pts/1 2>/dev/null | grep kiro-cli | head -1 | awk '{print $2}')
echo "Kiro PID: $KIRO_PID"

# Get heap address
HEAP_ADDR=$(sudo cat /proc/$KIRO_PID/maps | grep heap | awk '{print $1}' | cut -d'-' -f1)
echo "Heap address: 0x$HEAP_ADDR"

# Calculate write address (64 KB into heap, within bounds)
WRITE_ADDR=$((0x$HEAP_ADDR + 64 * 1024))
printf "Write address: 0x%x\n" $WRITE_ADDR

# Write "THIS TEXT" to calculated address via GDB
echo "Writing 'THIS TEXT' to memory..."
sudo gdb -batch -p $KIRO_PID \
  -ex "set {char[10]}$WRITE_ADDR = \"THIS TEXT\"" \
  -ex "x/10c $WRITE_ADDR" 2>&1 | grep -v "^[A-Z]"

echo "✅ Written to memory calculated by MiniZinc"
