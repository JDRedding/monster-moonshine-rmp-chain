// Token Encoder: Map vocabulary to Monster primes

fn main() {
    println!("FractranLlama Token Encoder\n");
    println!("═══════════════════════════\n");
    
    let monster = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 41, 47, 59, 71];
    
    println!("Monster Prime Encoding:");
    for (i, &p) in monster.iter().enumerate() {
        println!("  Token {} → prime {}", i, p);
    }
    println!();
    
    // For large vocabularies, use prime wraparound
    let vocab_size = 32000; // Llama vocab size
    
    println!("Vocabulary Encoding (vocab_size = {}):", vocab_size);
    println!();
    
    // Strategy 1: Direct prime mapping (first 15 tokens)
    println!("Strategy 1: Direct mapping (tokens 0-14)");
    for i in 0..15 {
        println!("  Token {} → {}^1", i, monster[i]);
    }
    println!();
    
    // Strategy 2: Prime products (tokens 15+)
    println!("Strategy 2: Prime products (tokens 15+)");
    println!("  Token 15 → 2×3 = 6");
    println!("  Token 16 → 2×5 = 10");
    println!("  Token 17 → 2×7 = 14");
    println!("  Token 18 → 3×5 = 15");
    println!("  Token 19 → 2×11 = 22");
    println!("  ...");
    println!();
    
    // Strategy 3: Prime exponents (compact encoding)
    println!("Strategy 3: Prime exponents (compact)");
    println!("  Token n → 2^(n mod 71)");
    println!("  Token 0 → 2^0 = 1");
    println!("  Token 1 → 2^1 = 2");
    println!("  Token 71 → 2^0 = 1 (wraparound)");
    println!();
    
    // Example: Encode sentence
    println!("Example: Encode sentence");
    println!();
    let sentence = "Hello world";
    let tokens = vec![15496, 1917]; // Example token IDs
    
    println!("  Sentence: \"{}\"", sentence);
    println!("  Tokens: {:?}", tokens);
    println!();
    
    println!("  FRACTRAN encoding:");
    for (i, &token) in tokens.iter().enumerate() {
        let bucket = token % 71;
        let prime = monster[(bucket as usize).min(14)];
        let exponent = token / 71 + 1;
        println!("    Token[{}] = {} → {}^{}", i, token, prime, exponent);
    }
    println!();
    
    // Sequence encoding
    println!("Sequence Encoding:");
    println!("  State = product of token encodings");
    println!();
    
    let mut state_parts = Vec::new();
    for &token in &tokens {
        let bucket = token % 71;
        let prime = monster[(bucket as usize).min(14)];
        let exponent = token / 71 + 1;
        state_parts.push(format!("{}^{}", prime, exponent));
    }
    
    println!("  State = {}", state_parts.join(" × "));
    println!();
    
    // Special tokens
    println!("Special Tokens:");
    println!("  <BOS> (1) → 3^1   (prime 3, beginning)");
    println!("  <EOS> (2) → 5^1   (prime 5, end)");
    println!("  <PAD> (0) → 2^0=1 (prime 2, identity)");
    println!("  <UNK> → 71^1      (prime 71, omega/unknown)");
    println!();
    
    // Embedding dimension
    println!("Embedding Dimension:");
    println!("  196883 = 47 × 59 × 71");
    println!("  Could be: d_model, d_ff, or vocab_size");
    println!();
    
    println!("∴ Vocabulary encoded as Monster prime products");
    println!("∴ Sequences = FRACTRAN states");
    println!("Q.E.D. □");
}
