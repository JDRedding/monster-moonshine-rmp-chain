#!/bin/bash
# Tmux Memory Model Capture

WORK_DIR="/home/mdupont/experiments/monster/tmux-analysis"
cd "$WORK_DIR"

echo "🧠 Tmux Memory Model Capture"
echo "============================"
echo

TMUX_PID=$(ps aux | grep 'tmux$' | grep -v grep | awk '{print $2}' | head -1)

if [ -z "$TMUX_PID" ]; then
    echo "❌ No tmux process found"
    exit 1
fi

echo "✅ Found tmux PID: $TMUX_PID"
echo

# 1. Memory maps
echo "1. Capturing memory maps..."
sudo cat /proc/$TMUX_PID/maps > memory_maps.txt
echo "   ✅ Saved to memory_maps.txt"

# 2. Memory stats
echo "2. Capturing memory stats..."
sudo cat /proc/$TMUX_PID/status | grep -E 'Vm|Rss' > memory_stats.txt
echo "   ✅ Saved to memory_stats.txt"

# 3. SMAPS (detailed)
echo "3. Capturing detailed memory info..."
sudo cat /proc/$TMUX_PID/smaps > memory_smaps.txt
echo "   ✅ Saved to memory_smaps.txt"

# 4. Heap dump with GDB
echo "4. Capturing heap info..."
sudo gdb -p "$TMUX_PID" -batch \
    -ex 'set pagination off' \
    -ex 'info proc mappings' \
    -ex 'info heap' \
    -ex 'maintenance info sections' \
    -ex 'detach' \
    -ex 'quit' > memory_heap.txt 2>&1
echo "   ✅ Saved to memory_heap.txt"

# 5. Memory dump (first 1MB of heap)
echo "5. Dumping heap memory..."
HEAP_START=$(grep '\[heap\]' memory_maps.txt | awk '{print $1}' | cut -d'-' -f1)
if [ -n "$HEAP_START" ]; then
    sudo gdb -p "$TMUX_PID" -batch \
        -ex "dump memory heap_dump.bin 0x$HEAP_START 0x$HEAP_START+0x100000" \
        -ex 'detach' \
        -ex 'quit' 2>&1 | grep -v "warning:"
    echo "   ✅ Saved to heap_dump.bin"
else
    echo "   ⚠️  Could not find heap"
fi

echo
echo "✅ Memory model captured!"
ls -lh memory_*.txt heap_dump.bin 2>/dev/null
