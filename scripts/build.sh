#!/bin/bash

if [ -d build ]; then
  rm -rf build
fi

mkdir build

# Install dependencies with Conan
conan install . --output-folder=build --build=missing

# Configure and build with CMake
cmake -B build \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
  -DCMAKE_CXX_STANDARD=20 \
  -DCMAKE_CXX_COMPILER=clang++

cmake --build build
