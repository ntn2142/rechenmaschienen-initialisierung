:: install rust_analyzer
rustup component add rust-analyzer
:: install cargo-llvm-cov
rustup component add llvm-tools-preview --toolchain stable-x86_64-pc-windows-msvc
cargo +stable install cargo-llvm-cov --locked
pause
