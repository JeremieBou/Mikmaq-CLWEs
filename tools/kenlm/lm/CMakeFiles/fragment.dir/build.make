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
include lm/CMakeFiles/fragment.dir/depend.make

# Include the progress variables for this target.
include lm/CMakeFiles/fragment.dir/progress.make

# Include the compile flags for this target's objects.
include lm/CMakeFiles/fragment.dir/flags.make

lm/CMakeFiles/fragment.dir/fragment_main.cc.o: lm/CMakeFiles/fragment.dir/flags.make
lm/CMakeFiles/fragment.dir/fragment_main.cc.o: ../lm/fragment_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm2/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lm/CMakeFiles/fragment.dir/fragment_main.cc.o"
	cd /home/jeremie/dev/kenlm2/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fragment.dir/fragment_main.cc.o -c /home/jeremie/dev/kenlm2/kenlm/lm/fragment_main.cc

lm/CMakeFiles/fragment.dir/fragment_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fragment.dir/fragment_main.cc.i"
	cd /home/jeremie/dev/kenlm2/kenlm/build/lm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm2/kenlm/lm/fragment_main.cc > CMakeFiles/fragment.dir/fragment_main.cc.i

lm/CMakeFiles/fragment.dir/fragment_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fragment.dir/fragment_main.cc.s"
	cd /home/jeremie/dev/kenlm2/kenlm/build/lm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm2/kenlm/lm/fragment_main.cc -o CMakeFiles/fragment.dir/fragment_main.cc.s

lm/CMakeFiles/fragment.dir/fragment_main.cc.o.requires:

.PHONY : lm/CMakeFiles/fragment.dir/fragment_main.cc.o.requires

lm/CMakeFiles/fragment.dir/fragment_main.cc.o.provides: lm/CMakeFiles/fragment.dir/fragment_main.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/fragment.dir/build.make lm/CMakeFiles/fragment.dir/fragment_main.cc.o.provides.build
.PHONY : lm/CMakeFiles/fragment.dir/fragment_main.cc.o.provides

lm/CMakeFiles/fragment.dir/fragment_main.cc.o.provides.build: lm/CMakeFiles/fragment.dir/fragment_main.cc.o


# Object files for target fragment
fragment_OBJECTS = \
"CMakeFiles/fragment.dir/fragment_main.cc.o"

# External object files for target fragment
fragment_EXTERNAL_OBJECTS =

bin/fragment: lm/CMakeFiles/fragment.dir/fragment_main.cc.o
bin/fragment: lm/CMakeFiles/fragment.dir/build.make
bin/fragment: lib/libkenlm.a
bin/fragment: lib/libkenlm_util.a
bin/fragment: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
bin/fragment: /usr/lib/x86_64-linux-gnu/libboost_system.so
bin/fragment: /usr/lib/x86_64-linux-gnu/libboost_thread.so
bin/fragment: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so
bin/fragment: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
bin/fragment: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
bin/fragment: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
bin/fragment: /usr/lib/x86_64-linux-gnu/libpthread.so
bin/fragment: /usr/lib/x86_64-linux-gnu/libz.so
bin/fragment: /usr/lib/x86_64-linux-gnu/libbz2.so
bin/fragment: /usr/lib/x86_64-linux-gnu/liblzma.so
bin/fragment: lm/CMakeFiles/fragment.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jeremie/dev/kenlm2/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/fragment"
	cd /home/jeremie/dev/kenlm2/kenlm/build/lm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fragment.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lm/CMakeFiles/fragment.dir/build: bin/fragment

.PHONY : lm/CMakeFiles/fragment.dir/build

lm/CMakeFiles/fragment.dir/requires: lm/CMakeFiles/fragment.dir/fragment_main.cc.o.requires

.PHONY : lm/CMakeFiles/fragment.dir/requires

lm/CMakeFiles/fragment.dir/clean:
	cd /home/jeremie/dev/kenlm2/kenlm/build/lm && $(CMAKE_COMMAND) -P CMakeFiles/fragment.dir/cmake_clean.cmake
.PHONY : lm/CMakeFiles/fragment.dir/clean

lm/CMakeFiles/fragment.dir/depend:
	cd /home/jeremie/dev/kenlm2/kenlm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jeremie/dev/kenlm2/kenlm /home/jeremie/dev/kenlm2/kenlm/lm /home/jeremie/dev/kenlm2/kenlm/build /home/jeremie/dev/kenlm2/kenlm/build/lm /home/jeremie/dev/kenlm2/kenlm/build/lm/CMakeFiles/fragment.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lm/CMakeFiles/fragment.dir/depend

