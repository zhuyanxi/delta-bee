zyx@zyx:~/RustProjects/delta-bee$ cargo xtask build-ebpf
   Compiling proc-macro2 v1.0.79
   Compiling unicode-ident v1.0.12
   Compiling utf8parse v0.2.1
   Compiling anstyle-parse v0.2.3
   Compiling quote v1.0.35
   Compiling colorchoice v1.0.0
   Compiling anstyle v1.0.6
   Compiling anstyle-query v1.0.2
   Compiling anstream v0.6.13
   Compiling syn v2.0.52
   Compiling strsim v0.11.0
   Compiling heck v0.5.0
   Compiling anyhow v1.0.81
   Compiling clap_lex v0.7.0
   Compiling clap_builder v4.5.2
   Compiling clap_derive v4.5.3
   Compiling clap v4.5.3
   Compiling xtask v0.1.0 (/home/zyx/RustProjects/delta-bee/xtask)
    Finished dev [unoptimized + debuginfo] target(s) in 17.17s
     Running `target/debug/xtask build-ebpf`
Hello aya ebpf!
   Compiling compiler_builtins v0.1.108
   Compiling core v0.0.0 (/home/zyx/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core)
   Compiling rustc-std-workspace-core v1.99.0 (/home/zyx/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/rustc-std-workspace-core)
   Compiling proc-macro2 v1.0.79
   Compiling unicode-ident v1.0.12
   Compiling version_check v0.9.4
   Compiling quote v1.0.35
   Compiling syn v2.0.52
   Compiling ahash v0.8.11
   Compiling core-error v0.0.0
   Compiling cfg-if v1.0.0
   Compiling once_cell v1.19.0
error[E0463]: can't find crate for `alloc`
   --> /home/zyx/.cargo/registry/src/index.crates.io-6f17d22bba15001f/once_cell-1.19.0/src/lib.rs:368:1
    |
368 | extern crate alloc;
    | ^^^^^^^^^^^^^^^^^^^ can't find crate

error[E0599]: no method named `compare_exchange` found for struct `AtomicUsize` in the current scope
  --> /home/zyx/.cargo/registry/src/index.crates.io-6f17d22bba15001f/once_cell-1.19.0/src/race.rs:60:24
   |
60 |             self.inner.compare_exchange(0, value.get(), Ordering::AcqRel, Ordering::Acquire);
   |                        ^^^^^^^^^^^^^^^^ method not found in `AtomicUsize`

error[E0599]: no method named `compare_exchange` found for struct `AtomicUsize` in the current scope
   --> /home/zyx/.cargo/registry/src/index.crates.io-6f17d22bba15001f/once_cell-1.19.0/src/race.rs:101:32
    |
101 |                     self.inner.compare_exchange(0, val, Ordering::AcqRel, Ordering::Acquire);
    |                                ^^^^^^^^^^^^^^^^ method not found in `AtomicUsize`

error[E0599]: no method named `compare_exchange` found for struct `AtomicPtr` in the current scope
   --> /home/zyx/.cargo/registry/src/index.crates.io-6f17d22bba15001f/once_cell-1.19.0/src/race.rs:218:24
    |
218 |             self.inner.compare_exchange(ptr::null_mut(), ptr, Ordering::AcqRel, Ordering::Acquire);
    |                        ^^^^^^^^^^^^^^^^ method not found in `AtomicPtr<T>`

error[E0599]: no method named `compare_exchange` found for struct `AtomicPtr` in the current scope
   --> /home/zyx/.cargo/registry/src/index.crates.io-6f17d22bba15001f/once_cell-1.19.0/src/race.rs:258:39
    |
258 |             let exchange = self.inner.compare_exchange(
    |                            -----------^^^^^^^^^^^^^^^^ method not found in `AtomicPtr<T>`

error[E0599]: no method named `compare_exchange` found for struct `AtomicPtr` in the current scope
   --> /home/zyx/.cargo/registry/src/index.crates.io-6f17d22bba15001f/once_cell-1.19.0/src/race.rs:348:39
    |
348 |             let exchange = self.inner.compare_exchange(
    |                            -----------^^^^^^^^^^^^^^^^ method not found in `AtomicPtr<T>`

error[E0599]: no method named `compare_exchange` found for struct `AtomicPtr` in the current scope
   --> /home/zyx/.cargo/registry/src/index.crates.io-6f17d22bba15001f/once_cell-1.19.0/src/race.rs:394:43
    |
394 |                 let exchange = self.inner.compare_exchange(
    |                                -----------^^^^^^^^^^^^^^^^ method not found in `AtomicPtr<T>`

Some errors have detailed explanations: E0463, E0599.
For more information about an error, try `rustc --explain E0463`.
error: could not compile `once_cell` (lib) due to 7 previous errors
thread 'main' panicked at xtask/src/build_ebpf.rs:60:5:
assertion failed: status.success()
note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace


export http_proxy=http://192.168.28.120:7881;export https_proxy=http://192.168.28.120:7881;export ALL_PROXY=socks5://192.168.28.120:7871