# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jesper/dev/cpp/cpp-flops-benchmark

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jesper/dev/cpp/cpp-flops-benchmark/build

# Include any dependencies generated for this target.
include CMakeFiles/cpp-flops-benchmark.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cpp-flops-benchmark.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cpp-flops-benchmark.dir/flags.make

CMakeFiles/cpp-flops-benchmark.dir/src/main.cpp.o: CMakeFiles/cpp-flops-benchmark.dir/flags.make
CMakeFiles/cpp-flops-benchmark.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jesper/dev/cpp/cpp-flops-benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cpp-flops-benchmark.dir/src/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp-flops-benchmark.dir/src/main.cpp.o -c /home/jesper/dev/cpp/cpp-flops-benchmark/src/main.cpp

CMakeFiles/cpp-flops-benchmark.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-flops-benchmark.dir/src/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jesper/dev/cpp/cpp-flops-benchmark/src/main.cpp > CMakeFiles/cpp-flops-benchmark.dir/src/main.cpp.i

CMakeFiles/cpp-flops-benchmark.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-flops-benchmark.dir/src/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jesper/dev/cpp/cpp-flops-benchmark/src/main.cpp -o CMakeFiles/cpp-flops-benchmark.dir/src/main.cpp.s

# Object files for target cpp-flops-benchmark
cpp__flops__benchmark_OBJECTS = \
"CMakeFiles/cpp-flops-benchmark.dir/src/main.cpp.o"

# External object files for target cpp-flops-benchmark
cpp__flops__benchmark_EXTERNAL_OBJECTS =

bin/cpp-flops-benchmark: CMakeFiles/cpp-flops-benchmark.dir/src/main.cpp.o
bin/cpp-flops-benchmark: CMakeFiles/cpp-flops-benchmark.dir/build.make
bin/cpp-flops-benchmark: CMakeFiles/cpp-flops-benchmark.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jesper/dev/cpp/cpp-flops-benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/cpp-flops-benchmark"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpp-flops-benchmark.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cpp-flops-benchmark.dir/build: bin/cpp-flops-benchmark

.PHONY : CMakeFiles/cpp-flops-benchmark.dir/build

CMakeFiles/cpp-flops-benchmark.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpp-flops-benchmark.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpp-flops-benchmark.dir/clean

CMakeFiles/cpp-flops-benchmark.dir/depend:
	cd /home/jesper/dev/cpp/cpp-flops-benchmark/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jesper/dev/cpp/cpp-flops-benchmark /home/jesper/dev/cpp/cpp-flops-benchmark /home/jesper/dev/cpp/cpp-flops-benchmark/build /home/jesper/dev/cpp/cpp-flops-benchmark/build /home/jesper/dev/cpp/cpp-flops-benchmark/build/CMakeFiles/cpp-flops-benchmark.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpp-flops-benchmark.dir/depend

