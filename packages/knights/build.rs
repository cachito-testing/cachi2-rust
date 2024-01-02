use std::fs::File;
use std::io::prelude::*;

fn main() -> std::io::Result<()> {
    let mut file = File::create("/tmp/rust-build-script-test/build-script-knights.txt")?;
    file.write_all(b"Nobody expects the build script execution!")?;
    Ok(())
}