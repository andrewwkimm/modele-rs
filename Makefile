help:
	cat Makefile

################################################################################

build:
	cargo build
	make reformat
	make lint
	make type_check
	make test

lint:
	cargo clippy --all-targets --all-features -- -D warnings

reformat:
	cargo fmt

test:
	cargo test

type_check:
	cargo check

################################################################################

.PHONY: \
	build \
	help \
	lint \
	reformat \
	test \
	type_check