#!/bin/bash
# Analyze tmux traces

cd /home/mdupont/experiments/monster/tmux-analysis

echo "📊 Tmux Trace Analysis"
echo "======================"
echo

# 1. Syscall frequency
echo "1. Top 10 Syscalls:"
sudo grep -oP '^\d+ \d+:\d+:\d+\.\d+ \K\w+' strace.log | sort | uniq -c | sort -rn | head -10
echo

# 2. Time spent per syscall
echo "2. Slowest Syscalls (>1ms):"
sudo grep -oP '^\d+ \d+:\d+:\d+\.\d+ (\w+).*<(\d+\.\d+)>' strace.log | awk -F'[<>]' '$2 > 0.001 {print $2, $1}' | sort -rn | head -10
echo

# 3. File descriptors
echo "3. File Descriptors:"
sudo grep -oP 'fd=\K\d+' strace.log | sort -n | uniq -c | sort -rn | head -10
echo

# 4. Poll events
echo "4. Poll Events:"
sudo grep 'poll(' strace.log | wc -l
echo

# 5. I/O operations
echo "5. I/O Operations:"
echo "  read/readv: $(sudo grep -c 'readv\?(' strace.log)"
echo "  write/writev: $(sudo grep -c 'writev\?(' strace.log)"
echo "  ioctl: $(sudo grep -c 'ioctl(' strace.log)"
echo

# 6. Perf hotspots
echo "6. CPU Hotspots (top 10 functions):"
head -50 perf_report.txt | grep -A 30 "Overhead" | tail -20
echo

echo "✅ Analysis complete!"
echo "Full reports: perf_report.txt, perf_script.txt"
