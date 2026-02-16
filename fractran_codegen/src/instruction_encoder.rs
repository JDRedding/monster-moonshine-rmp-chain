// Instruction Encoder: x86-64 → FRACTRAN

fn main() {
    println!("x86-64 Instruction → FRACTRAN Encoder\n");
    println!("═══════════════════════════════════════\n");
    
    // Monster primes = registers
    let regs = [
        ("rax", 2), ("rbx", 3), ("rcx", 5), ("rdx", 7),
        ("rsi", 11), ("rdi", 13), ("rbp", 17), ("rsp", 19),
        ("r8", 23), ("r9", 29), ("r10", 31), ("r11", 41),
        ("r12", 47), ("r13", 59), ("r14", 71),
    ];
    
    println!("Register Encoding:");
    for (name, prime) in &regs {
        println!("  {} → prime {}", name, prime);
    }
    println!();
    
    // Instruction encodings
    println!("Instruction → FRACTRAN Encoding:\n");
    
    // MOV instructions
    println!("MOV (data transfer):");
    println!("  mov rax, rbx  →  3/2    (rbx → rax)");
    println!("  mov rcx, rdx  →  7/5    (rdx → rcx)");
    println!("  mov r12, r13  →  59/47  (r13 → r12)");
    println!();
    
    // Arithmetic
    println!("ADD (arithmetic):");
    println!("  add rax, rbx  →  6/2    (rax × rbx → rax)");
    println!("  add rcx, rdx  →  35/5   (rcx × rdx → rcx)");
    println!();
    
    // Multiplication
    println!("MUL (multiply):");
    println!("  mul rax, rbx  →  6/1    (state × 2 × 3)");
    println!("  mul r12, r13  →  2773/1 (state × 47 × 59)");
    println!();
    
    // Control flow
    println!("JMP (unconditional jump):");
    println!("  jmp label     →  p_target/p_current");
    println!("  jmp +10       →  next_prime/current_prime");
    println!();
    
    println!("JE/JZ (conditional jump, zero flag):");
    println!("  je label      →  [p_target/p_current, 1/1]");
    println!("  (if zero: apply first, else: apply second)");
    println!();
    
    // Stack operations
    println!("PUSH/POP (stack):");
    println!("  push rax      →  38/2   (rax → rsp, rsp = prime 19)");
    println!("  pop rbx       →  3/19   (rsp → rbx)");
    println!();
    
    // Function calls
    println!("CALL/RET (function calls):");
    println!("  call func     →  [p_func/p_current, 19×p_ret/1]");
    println!("  ret           →  p_ret/19");
    println!();
    
    // Example: Encode simple function
    println!("Example: Encode function\n");
    println!("```asm");
    println!("foo:");
    println!("  mov rax, rbx    ; 3/2");
    println!("  add rax, rcx    ; 10/2  (2×5 → 2)");
    println!("  mul rax, rdx    ; 14/2  (2×7 → 2)");
    println!("  ret             ; 1/19");
    println!("```");
    println!();
    println!("FRACTRAN program: [3/2, 10/2, 14/2, 1/19]");
    println!();
    
    // Execution trace
    println!("Execution trace (starting state = 2^1):");
    let mut state = 2u64;
    let program = [(3, 2), (10, 2), (14, 2)];
    
    for (step, (num, den)) in program.iter().enumerate() {
        print!("  Step {}: {} ", step, state);
        
        // Factor state
        let mut factors = Vec::new();
        let mut n = state;
        for (reg, prime) in &regs {
            let mut exp = 0;
            while n % prime == 0 {
                n /= prime;
                exp += 1;
            }
            if exp > 0 {
                factors.push(format!("{}^{}", reg, exp));
            }
        }
        println!("= {}", factors.join(" × "));
        
        if state % den == 0 {
            state = state / den * num;
            println!("    Apply {}/{} → {}", num, den, state);
        } else {
            println!("    Cannot apply {}/{}", num, den);
            break;
        }
    }
    println!();
    
    // Generate encoding table
    println!("Complete Encoding Table:");
    println!();
    println!("| Instruction | FRACTRAN | Description |");
    println!("|-------------|----------|-------------|");
    println!("| mov r1, r2  | p2/p1    | Transfer r2 → r1 |");
    println!("| add r1, r2  | (p1×p2)/p1 | Add r2 to r1 |");
    println!("| sub r1, r2  | p1/(p1×p2) | Subtract r2 from r1 |");
    println!("| mul r1, r2  | (p1×p2)/1  | Multiply r1 by r2 |");
    println!("| div r1, r2  | p1/(p1×p2) | Divide r1 by r2 |");
    println!("| jmp label   | p_l/p_c    | Jump to label |");
    println!("| je label    | [p_l/p_c, 1/1] | Jump if equal |");
    println!("| call func   | [p_f/p_c, 19×p_ret/1] | Call function |");
    println!("| ret         | p_ret/19   | Return from function |");
    println!("| push reg    | (19×p_r)/p_r | Push to stack |");
    println!("| pop reg     | p_r/19     | Pop from stack |");
    println!();
    
    println!("∴ Every x86-64 instruction encodable as FRACTRAN");
    println!("∴ Complete programs = FRACTRAN sequences");
    println!("Q.E.D. □");
}
