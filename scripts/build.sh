#!/bin/bash

if [ -d build ]; then
  rm -rf build
fi

mkdir build

# Install dependencies with Conan
conan install . --output-folder=build --build=missing

# Configure and build with CMake
cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=build/conan_toolchain.cmake
cmake --build build