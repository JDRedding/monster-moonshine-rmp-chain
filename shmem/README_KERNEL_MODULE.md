# Kernel Module: mod_zkprologml_erdfa_term

## Overview
Kernel module that reads zkPrologML-ERDFA objects and executes their lifted MetaCoq terms directly to TTY.

## Architecture
```
zkPrologML-ERDFA Object (in kernel memory)
  ↓
Signature Verification (ed25519)
  ↓
Lifted MetaCoq Execution
  ↓
TTY Write (ANSI rainbow banner)
```

## Build & Install
```bash
cd /home/mdupont/experiments/monster/shmem
make
sudo make install
dmesg | tail  # View kernel logs
```

## Uninstall
```bash
sudo make uninstall
```

## Features
- Embedded zkPrologML-ERDFA object in kernel
- Direct TTY access via `tty->driver->ops->write()`
- ANSI escape sequence support
- Rainbow banner at top right (rows 1-3, col 60+)

## Security
- ZK proof verification (stub)
- ed25519 signature check
- Kernel-level execution isolation
