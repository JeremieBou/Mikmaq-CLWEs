# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/jeremie/dev/kenlm2/kenlm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jeremie/dev/kenlm2/kenlm/build

# Include any dependencies generated for this target.
include util/CMakeFiles/multi_intersection_test.dir/depend.make

# Include the progress variables for this target.
include util/CMakeFiles/multi_intersection_test.dir/progress.make

# Include the compile flags for this target's objects.
include util/CMakeFiles/multi_intersection_test.dir/flags.make

util/CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.o: util/CMakeFiles/multi_intersection_test.dir/flags.make
util/CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.o: ../util/multi_intersection_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm2/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object util/CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.o"
	cd /home/jeremie/dev/kenlm2/kenlm/build/util && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.o -c /home/jeremie/dev/kenlm2/kenlm/util/multi_intersection_test.cc

util/CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.i"
	cd /home/jeremie/dev/kenlm2/kenlm/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm2/kenlm/util/multi_intersection_test.cc > CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.i

util/CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.s"
	cd /home/jeremie/dev/kenlm2/kenlm/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm2/kenlm/util/multi_intersection_test.cc -o CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.s

util/CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.o.requires:

.PHONY : util/CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.o.requires

util/CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.o.provides: util/CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.o.requires
	$(MAKE) -f util/CMakeFiles/multi_intersection_test.dir/build.make util/CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.o.provides.build
.PHONY : util/CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.o.provides

util/CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.o.provides.build: util/CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.o


# Object files for target multi_intersection_test
multi_intersection_test_OBJECTS = \
"CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.o"

# External object files for target multi_intersection_test
multi_intersection_test_EXTERNAL_OBJECTS =

tests/multi_intersection_test: util/CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.o
tests/multi_intersection_test: util/CMakeFiles/multi_intersection_test.dir/build.make
tests/multi_intersection_test: lib/libkenlm_util.a
tests/multi_intersection_test: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
tests/multi_intersection_test: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/multi_intersection_test: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/multi_intersection_test: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so
tests/multi_intersection_test: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
tests/multi_intersection_test: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
tests/multi_intersection_test: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
tests/multi_intersection_test: /usr/lib/x86_64-linux-gnu/libpthread.so
tests/multi_intersection_test: /usr/lib/x86_64-linux-gnu/libz.so
tests/multi_intersection_test: /usr/lib/x86_64-linux-gnu/libbz2.so
tests/multi_intersection_test: /usr/lib/x86_64-linux-gnu/liblzma.so
tests/multi_intersection_test: util/CMakeFiles/multi_intersection_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jeremie/dev/kenlm2/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../tests/multi_intersection_test"
	cd /home/jeremie/dev/kenlm2/kenlm/build/util && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/multi_intersection_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
util/CMakeFiles/multi_intersection_test.dir/build: tests/multi_intersection_test

.PHONY : util/CMakeFiles/multi_intersection_test.dir/build

util/CMakeFiles/multi_intersection_test.dir/requires: util/CMakeFiles/multi_intersection_test.dir/multi_intersection_test.cc.o.requires

.PHONY : util/CMakeFiles/multi_intersection_test.dir/requires

util/CMakeFiles/multi_intersection_test.dir/clean:
	cd /home/jeremie/dev/kenlm2/kenlm/build/util && $(CMAKE_COMMAND) -P CMakeFiles/multi_intersection_test.dir/cmake_clean.cmake
.PHONY : util/CMakeFiles/multi_intersection_test.dir/clean

util/CMakeFiles/multi_intersection_test.dir/depend:
	cd /home/jeremie/dev/kenlm2/kenlm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jeremie/dev/kenlm2/kenlm /home/jeremie/dev/kenlm2/kenlm/util /home/jeremie/dev/kenlm2/kenlm/build /home/jeremie/dev/kenlm2/kenlm/build/util /home/jeremie/dev/kenlm2/kenlm/build/util/CMakeFiles/multi_intersection_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : util/CMakeFiles/multi_intersection_test.dir/depend

