cmake_minimum_required(VERSION 3.14)

project(Engine VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Choose the build type (e.g., Debug, Release)" FORCE)
endif()

include(${CMAKE_BINARY_DIR}/conan_toolchain.cmake)

file(GLOB_RECURSE SOURCES
    src/*.cpp
)

find_package(fmt REQUIRED)

add_executable(${PROJECT_NAME} ${SOURCES})
target_link_libraries(${PROJECT_NAME} PRIVATE fmt::fmt)
