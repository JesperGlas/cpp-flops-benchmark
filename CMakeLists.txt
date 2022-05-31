# Root CMakeLists.txt for template C++ project
# Author: Jesper Glas

# Set minimum cmake version
cmake_minimum_required(VERSION 3.16)

# Set project parameters
project(
    "cpp-flops-benchmark"
    VERSION 1.0
    LANGUAGES CXX
)

# Compiler config
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED on)
set(CMAKE_CXX_FLAGS "-Wall -Werror")

# Set output directories
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/bin)

# Set variables for src and include directories
set(SOURCE ${PROJECT_SOURCE_DIR}/src)
set(INCLUDE ${PROJECT_SOURCE_DIR}/include)

# Include project config header
configure_file(
    ${INCLUDE}/ProjectConfig.hpp.in
    ProjectConfig.hpp
)

# Make app executable
add_executable(
    ${PROJECT_NAME}
    ${SOURCE}/main.cpp
)

# Set main target include directories
target_include_directories(
    ${PROJECT_NAME}
    PUBLIC
        ${PROJECT_BINARY_DIR}
        ${INCLUDE}
)