# build ebpf program
cargo xtask build-ebpf

# run program
RUST_LOG=info cargo xtask run
RUST_LOG=info sudo -E target/debug/deltabee

# show current bpf program
sudo bpftool prog list


export http_proxy=http://192.168.28.120:7881
export https_proxy=http://192.168.28.120:7881
export ALL_PROXY=socks5://192.168.28.120:7871