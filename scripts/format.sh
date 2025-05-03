#!/bin/bash

sh ./scripts/build.sh

clang-format --dry-run --Werror src/*.cpp

