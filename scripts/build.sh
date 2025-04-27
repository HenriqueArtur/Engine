#!/bin/bash

if [ -d build ]; then
  rm -rf build
fi

mkdir build

cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=$HOME/vcpkg/scripts/buildsystems/vcpkg.cmake

cmake --build build