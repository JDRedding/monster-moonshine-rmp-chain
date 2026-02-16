#!/bin/bash
PID=$(pgrep -x tmux | head -1)
ADDR="0x575d8be97b77"

echo "=== Display Path Trace ==="
echo "Text: THIS TEXT"
echo "Address: $ADDR"
echo "PID: $PID"
echo

# Examine memory at address
echo "=== Memory Content ==="
gdb -batch -p $PID -ex "x/20c $ADDR" 2>/dev/null

# Trace writev calls
echo -e "\n=== Tracing writev (5 seconds) ==="
timeout 5 strace -p $PID -e writev -s 200 2>&1 | grep -A2 "THIS TEXT" | head -20

# Check terminal output buffer
echo -e "\n=== Terminal Buffer ==="
tmux capture-pane -p | grep -C2 "THIS TEXT" | head -10
