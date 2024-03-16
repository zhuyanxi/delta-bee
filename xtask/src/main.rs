mod build_ebpf;
mod run;

use clap::Parser;
use std::process::exit;

#[derive(Debug, Parser)]
pub struct Options {
    #[clap(subcommand)]
    command: Command,
}

#[derive(Debug, Parser)]
enum Command {
    BuildEbpf(build_ebpf::Options),
    Run(run::Options),
}

fn main() {
    println!("Hello aya ebpf!");

    let opts = Options::parse();

    use Command::*;
    let ret = match opts.command {
        BuildEbpf(opts) => build_ebpf::build_ebpf(opts),
        Run(opts) => run::run(opts),
    };
    if let Err(e) = ret {
        eprint!("{e:#}");
        exit(1);
    }
}
