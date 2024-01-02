#!/bin/bash
TMP_FOLDER="/tmp/rust-build-script-test"

if [ -d "$TMP_FOLDER" ] || [ -d "./vendor" ] || [ -d "./target"  ]; then
	echo "In order for the test to run properly, make sure these folders don't exist: "
	echo "$TMP_FOLDER"
	echo "./vendor"
	echo "./target"
	exit 1
fi

set -x

mkdir -p /tmp/rustic-build-script-test

# these commands should not trigger the build script
cargo update
cargo fetch
cargo metadata
cargo vendor

if [ "$(ls $TMP_FOLDER| wc -l)" != 0 ]; then
	echo "Build script was trigged, and it should not!"
	exit 1
fi

cargo build

if [ "$(ls $TMP_FOLDER | wc -l)" > 0 ]; then
	echo "Build script was trigged as expected."
	echo "The following files were created:"
	ls $TMP_FOLDER
	exit
fi
