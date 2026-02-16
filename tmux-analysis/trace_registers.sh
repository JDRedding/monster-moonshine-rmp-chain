#!/bin/bash
# Enhanced tmux trace with register dumps

WORK_DIR="/home/mdupont/experiments/monster/tmux-analysis"
cd "$WORK_DIR"

echo "🔍 Enhanced Tmux Analysis (with registers)"
echo "=========================================="
echo

TMUX_PID=$(ps aux | grep 'tmux$' | grep -v grep | awk '{print $2}' | head -1)

if [ -z "$TMUX_PID" ]; then
    echo "❌ No tmux process found"
    exit 1
fi

echo "✅ Found tmux PID: $TMUX_PID"
echo

# 1. GDB register dumps
echo "1. Capturing register states with GDB..."
sudo gdb -p "$TMUX_PID" -batch \
    -ex 'set pagination off' \
    -ex 'set logging file registers.log' \
    -ex 'set logging on' \
    -ex 'info registers' \
    -ex 'bt' \
    -ex 'info threads' \
    -ex 'thread apply all bt' \
    -ex 'detach' \
    -ex 'quit' 2>&1 | tee gdb_output.log

echo "   ✅ Saved to registers.log"
echo

# 2. Perf with register sampling
echo "2. Running perf with register sampling..."
sudo perf record -p "$TMUX_PID" -e cycles -g --call-graph dwarf --user-regs=AX,BX,CX,DX,SI,DI,BP,SP,IP -o perf_regs.data sleep 10 &
PERF_PID=$!
echo "   PID: $PERF_PID"

wait $PERF_PID

echo "   ✅ Saved to perf_regs.data"
echo

# 3. Extract register values
echo "3. Extracting register values..."
sudo perf script -i perf_regs.data -F ip,sym,regs > perf_regs.txt 2>/dev/null
echo "   ✅ Saved to perf_regs.txt"

echo
echo "✅ Enhanced trace complete!"
ls -lh registers.log gdb_output.log perf_regs.data perf_regs.txt 2>/dev/null
