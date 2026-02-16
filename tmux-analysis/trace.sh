#!/bin/bash
# Tmux Analysis Scripts

WORK_DIR="/home/mdupont/experiments/monster/tmux-analysis"
cd "$WORK_DIR"

echo "🔍 Tmux Analysis Toolkit"
echo "========================"
echo

# Get tmux PID (server process)
TMUX_PID=$(ps aux | grep 'tmux$' | grep -v grep | awk '{print $2}' | head -1)

if [ -z "$TMUX_PID" ]; then
    echo "❌ No tmux process found"
    exit 1
fi

echo "✅ Found tmux PID: $TMUX_PID"
echo

# 1. Strace
echo "1. Running strace..."
sudo strace -p "$TMUX_PID" -o strace.log -f -tt -T &
STRACE_PID=$!
echo "   PID: $STRACE_PID"

# 2. Perf trace
echo "2. Running perf trace..."
sudo perf trace -p "$TMUX_PID" -o perf_trace.log &
PERF_PID=$!
echo "   PID: $PERF_PID"

# 3. Perf record
echo "3. Running perf record..."
sudo perf record -p "$TMUX_PID" -o perf.data -g &
PERF_REC_PID=$!
echo "   PID: $PERF_REC_PID"

echo
echo "⏱️  Tracing for 30 seconds..."
sleep 30

echo
echo "🛑 Stopping traces..."
sudo kill -INT $STRACE_PID 2>/dev/null
sudo kill -INT $PERF_PID 2>/dev/null
sudo kill -INT $PERF_REC_PID 2>/dev/null

sleep 2

echo
echo "✅ Traces collected:"
ls -lh strace.log perf_trace.log perf.data 2>/dev/null

echo
echo "📊 Generating reports..."
sudo perf report -i perf.data --stdio > perf_report.txt 2>/dev/null
sudo perf script -i perf.data > perf_script.txt 2>/dev/null

echo "✅ Done! Files in: $WORK_DIR"
