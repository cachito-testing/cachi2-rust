# Cachi2 Rust

This repository is meant to test a wide range of cases that can occur in Cachi2's processing of
Rust.

## Cases Covered

- [ x ] Standard crates.io dependency
- [ x ] crates.io dependency that is not pinned
- [ x ] git dependency
- [ x ] path dependency
- [ x ] patched dependency
- [ x ] workspaces
- [ x ] workspace dependency inheritance
- [   ] dev dependency
- [   ] build dependency
- [   ] dependency from non-standard registry
- [   ] platform specific dependency
- [   ] dependency with multiple-locations

To see more about Cargo dependency types, check the [official docs](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html).
