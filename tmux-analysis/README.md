# Tmux Analysis Workspace

**Analyze tmux with strace and perf**

## Quick Start

```bash
cd /home/mdupont/experiments/monster/tmux-analysis
./trace.sh
```

## What It Does

1. **strace**: System call tracing
   - Output: `strace.log`
   - Captures all syscalls with timestamps

2. **perf trace**: Performance tracing
   - Output: `perf_trace.log`
   - High-level syscall summary

3. **perf record**: CPU profiling
   - Output: `perf.data`
   - Call graphs and hotspots

## Analysis Scripts

Run after tracing:

```bash
./analyze.sh
```

## Files Generated

- `strace.log` - Raw strace output
- `perf_trace.log` - Perf trace output
- `perf.data` - Perf recording
- `perf_report.txt` - Perf report
- `perf_script.txt` - Perf script
- `analysis.txt` - Summary analysis
