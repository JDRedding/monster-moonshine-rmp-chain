#!/bin/bash
# Find "THIS TEXT" in tmux memory and trace its display path

WORK_DIR="/home/mdupont/experiments/monster/tmux-analysis"
cd "$WORK_DIR"

echo "🔍 Finding 'THIS TEXT' in tmux memory"
echo "====================================="
echo

TMUX_PID=$(ps aux | grep 'tmux$' | grep -v grep | awk '{print $2}' | head -1)

if [ -z "$TMUX_PID" ]; then
    echo "❌ No tmux process found"
    exit 1
fi

echo "✅ Found tmux PID: $TMUX_PID"
echo

# 1. Search in memory maps
echo "1. Searching memory for 'THIS TEXT'..."
sudo grep -a "THIS TEXT" /proc/$TMUX_PID/mem 2>/dev/null && echo "   ✅ Found in memory" || echo "   ⚠️  Not found in /proc/mem"

# 2. Use GDB to search memory
echo
echo "2. Searching with GDB..."
sudo gdb -p "$TMUX_PID" -batch \
    -ex 'set pagination off' \
    -ex 'find /b 0x575d8ba81000, 0x575d8c045000, "THIS TEXT"' \
    -ex 'info proc mappings' \
    -ex 'detach' \
    -ex 'quit' 2>&1 | tee gdb_search.log

# 3. Dump screen buffer
echo
echo "3. Capturing screen buffer..."
tmux capture-pane -p > screen_buffer.txt
grep -n "THIS TEXT" screen_buffer.txt && echo "   ✅ Found in screen buffer"

# 4. Search in all writable memory
echo
echo "4. Searching writable regions..."
grep "rw-p" memory_maps.txt | while read line; do
    START=$(echo $line | awk '{print $1}' | cut -d'-' -f1)
    END=$(echo $line | awk '{print $1}' | cut -d'-' -f2)
    echo "  Checking 0x$START-0x$END"
done

echo
echo "✅ Search complete!"
ls -lh gdb_search.log screen_buffer.txt 2>/dev/null
