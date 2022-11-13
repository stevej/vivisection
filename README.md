Rust Experiments
----------------

Digging into Rust's generated code and experimenting with understanding Rust
performance by profiling.

How to use:

Generate x86-64 asm
`cargo rustc -O --example basics -- --emit asm`

Generate MIR, Rust's new IR.
`cargo rustc -O --example basics -- --emit mir`

You can also generate LLVM IR with `llvm-ir`



How do I unmangle Rust symbols found in generated files?
--------------------------------------------------------
You can use `scripts/rust-unmangle.sh` to demangle Rust symbols.
