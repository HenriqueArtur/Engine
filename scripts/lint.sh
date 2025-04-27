#!/bin/bash

clang-tidy src/*.cpp -- \
  -I./vcpkg_installed/x64-linux/include \
  -I/usr/include/c++/11 \
  -I/usr/include/x86_64-linux-gnu/c++/11 \
  -I/usr/include/c++/11/backward \
  -I/usr/lib/llvm-14/lib/clang/14/include \
  -I/usr/local/include \
  -I/usr/include