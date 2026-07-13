# tree-sitter-language-pack Crystal — build and run
#
# Usage:
#   make              Build FFI + Crystal example
#   make example      Build the example binary
#   make run          Build and run the example
#   make clean        Remove build artifacts

# Try to find alef in PATH or common development locations.
# REPO is the repo root (two dirs up from packages/crystal).
ALEF     ?= $(shell command -v alef 2>/dev/null || \
            test -f $(REPO)/../alef/target/debug/alef && echo "$(REPO)/../alef/target/debug/alef" || \
            test -f $(REPO)/../../dsisnero/alef/target/debug/alef && echo "$(REPO)/../../dsisnero/alef/target/debug/alef" || \
            echo "alef")
CARGO    ?= cargo
CRYSTAL  ?= crystal
REPO     ?= $(abspath $(dir $(lastword $(MAKEFILE_LIST)))../..)

EXAMPLE  := $(REPO)/packages/crystal/bin/example
FFI_DIR  := $(REPO)/target/release
LINKFLAGS := -L$(FFI_DIR) -Wl,-rpath,$(FFI_DIR)

.PHONY: all ffi example run clean

all: example

$(FFI_DIR)/libts_pack_core_ffi.a:
	cd $(REPO) && $(ALEF) generate --lang ffi
	cd $(REPO) && $(CARGO) build -p ts-pack-core-ffi --release

ffi: $(FFI_DIR)/libts_pack_core_ffi.a

$(EXAMPLE): $(FFI_DIR)/libts_pack_core_ffi.a
	cd $(REPO) && $(ALEF) generate --lang crystal
	cd $(REPO)/packages/crystal && \
	  $(CRYSTAL) build examples/example.cr -o bin/example \
	    --link-flags="$(LINKFLAGS)"

example: $(EXAMPLE)

run: example
	$(CRYSTAL) run examples/example.cr --link-flags="$(LINKFLAGS)"

clean:
	rm -f $(EXAMPLE)
	cd $(REPO) && $(CARGO) clean -p ts-pack-core-ffi --release 2>/dev/null || true
