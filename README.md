# Cachi2 Rust

This repository is meant to test a wide range of cases that can occur in Cachi2's processing of
Rust.


## Build script triggering test

This branch aims to demonstrate when the build scripts are triggered. It contains build scripts
in the following locations:

```
.
├── build.rs
└── packages
    ├── knights
    │   └── build.rs
    └── utils
        └── build.rs
```

When executed, the build scripts will create files at `/tmp/rust-build-script-test`. They
should only be executed when a `cargo build` or `cargo run` command is issued.
