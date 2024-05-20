:: install rust_analyzer
rustup component add rust-analyzer
:: install cargo-llvm-cov
rustup toolchain install nightly
rustup component add llvm-tools-preview --toolchain nightly
cargo +stable install cargo-llvm-cov --locked
pause
