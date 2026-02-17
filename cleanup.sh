#!/usr/bin/env bash

# Clean submodule build artifacts, then top-level untracked files
git submodule foreach --recursive git clean -fdx 2>/dev/null || true
git submodule foreach --recursive git checkout . 2>/dev/null || true
git clean -fdx || rm -rf *~ build target *.tar.xz
