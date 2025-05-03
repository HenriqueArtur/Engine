#!/bin/bash

sh ./scripts/build.sh

clang-tidy src/*.cpp --export-fixes=fixes.yaml -p build
