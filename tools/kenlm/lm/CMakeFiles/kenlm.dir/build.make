# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/jeremie/dev/kenlm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jeremie/dev/kenlm/build

# Include any dependencies generated for this target.
include lm/CMakeFiles/kenlm.dir/depend.make

# Include the progress variables for this target.
include lm/CMakeFiles/kenlm.dir/progress.make

# Include the compile flags for this target's objects.
include lm/CMakeFiles/kenlm.dir/flags.make

lm/CMakeFiles/kenlm.dir/bhiksha.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/bhiksha.cc.o: ../lm/bhiksha.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lm/CMakeFiles/kenlm.dir/bhiksha.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/bhiksha.cc.o -c /home/jeremie/dev/kenlm/lm/bhiksha.cc

lm/CMakeFiles/kenlm.dir/bhiksha.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/bhiksha.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/bhiksha.cc > CMakeFiles/kenlm.dir/bhiksha.cc.i

lm/CMakeFiles/kenlm.dir/bhiksha.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/bhiksha.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/bhiksha.cc -o CMakeFiles/kenlm.dir/bhiksha.cc.s

lm/CMakeFiles/kenlm.dir/bhiksha.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/bhiksha.cc.o.requires

lm/CMakeFiles/kenlm.dir/bhiksha.cc.o.provides: lm/CMakeFiles/kenlm.dir/bhiksha.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/bhiksha.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/bhiksha.cc.o.provides

lm/CMakeFiles/kenlm.dir/bhiksha.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/bhiksha.cc.o


lm/CMakeFiles/kenlm.dir/binary_format.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/binary_format.cc.o: ../lm/binary_format.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lm/CMakeFiles/kenlm.dir/binary_format.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/binary_format.cc.o -c /home/jeremie/dev/kenlm/lm/binary_format.cc

lm/CMakeFiles/kenlm.dir/binary_format.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/binary_format.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/binary_format.cc > CMakeFiles/kenlm.dir/binary_format.cc.i

lm/CMakeFiles/kenlm.dir/binary_format.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/binary_format.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/binary_format.cc -o CMakeFiles/kenlm.dir/binary_format.cc.s

lm/CMakeFiles/kenlm.dir/binary_format.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/binary_format.cc.o.requires

lm/CMakeFiles/kenlm.dir/binary_format.cc.o.provides: lm/CMakeFiles/kenlm.dir/binary_format.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/binary_format.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/binary_format.cc.o.provides

lm/CMakeFiles/kenlm.dir/binary_format.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/binary_format.cc.o


lm/CMakeFiles/kenlm.dir/config.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/config.cc.o: ../lm/config.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lm/CMakeFiles/kenlm.dir/config.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/config.cc.o -c /home/jeremie/dev/kenlm/lm/config.cc

lm/CMakeFiles/kenlm.dir/config.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/config.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/config.cc > CMakeFiles/kenlm.dir/config.cc.i

lm/CMakeFiles/kenlm.dir/config.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/config.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/config.cc -o CMakeFiles/kenlm.dir/config.cc.s

lm/CMakeFiles/kenlm.dir/config.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/config.cc.o.requires

lm/CMakeFiles/kenlm.dir/config.cc.o.provides: lm/CMakeFiles/kenlm.dir/config.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/config.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/config.cc.o.provides

lm/CMakeFiles/kenlm.dir/config.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/config.cc.o


lm/CMakeFiles/kenlm.dir/lm_exception.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/lm_exception.cc.o: ../lm/lm_exception.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lm/CMakeFiles/kenlm.dir/lm_exception.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/lm_exception.cc.o -c /home/jeremie/dev/kenlm/lm/lm_exception.cc

lm/CMakeFiles/kenlm.dir/lm_exception.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/lm_exception.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/lm_exception.cc > CMakeFiles/kenlm.dir/lm_exception.cc.i

lm/CMakeFiles/kenlm.dir/lm_exception.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/lm_exception.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/lm_exception.cc -o CMakeFiles/kenlm.dir/lm_exception.cc.s

lm/CMakeFiles/kenlm.dir/lm_exception.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/lm_exception.cc.o.requires

lm/CMakeFiles/kenlm.dir/lm_exception.cc.o.provides: lm/CMakeFiles/kenlm.dir/lm_exception.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/lm_exception.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/lm_exception.cc.o.provides

lm/CMakeFiles/kenlm.dir/lm_exception.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/lm_exception.cc.o


lm/CMakeFiles/kenlm.dir/model.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/model.cc.o: ../lm/model.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object lm/CMakeFiles/kenlm.dir/model.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/model.cc.o -c /home/jeremie/dev/kenlm/lm/model.cc

lm/CMakeFiles/kenlm.dir/model.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/model.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/model.cc > CMakeFiles/kenlm.dir/model.cc.i

lm/CMakeFiles/kenlm.dir/model.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/model.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/model.cc -o CMakeFiles/kenlm.dir/model.cc.s

lm/CMakeFiles/kenlm.dir/model.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/model.cc.o.requires

lm/CMakeFiles/kenlm.dir/model.cc.o.provides: lm/CMakeFiles/kenlm.dir/model.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/model.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/model.cc.o.provides

lm/CMakeFiles/kenlm.dir/model.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/model.cc.o


lm/CMakeFiles/kenlm.dir/quantize.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/quantize.cc.o: ../lm/quantize.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object lm/CMakeFiles/kenlm.dir/quantize.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/quantize.cc.o -c /home/jeremie/dev/kenlm/lm/quantize.cc

lm/CMakeFiles/kenlm.dir/quantize.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/quantize.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/quantize.cc > CMakeFiles/kenlm.dir/quantize.cc.i

lm/CMakeFiles/kenlm.dir/quantize.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/quantize.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/quantize.cc -o CMakeFiles/kenlm.dir/quantize.cc.s

lm/CMakeFiles/kenlm.dir/quantize.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/quantize.cc.o.requires

lm/CMakeFiles/kenlm.dir/quantize.cc.o.provides: lm/CMakeFiles/kenlm.dir/quantize.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/quantize.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/quantize.cc.o.provides

lm/CMakeFiles/kenlm.dir/quantize.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/quantize.cc.o


lm/CMakeFiles/kenlm.dir/read_arpa.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/read_arpa.cc.o: ../lm/read_arpa.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object lm/CMakeFiles/kenlm.dir/read_arpa.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/read_arpa.cc.o -c /home/jeremie/dev/kenlm/lm/read_arpa.cc

lm/CMakeFiles/kenlm.dir/read_arpa.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/read_arpa.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/read_arpa.cc > CMakeFiles/kenlm.dir/read_arpa.cc.i

lm/CMakeFiles/kenlm.dir/read_arpa.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/read_arpa.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/read_arpa.cc -o CMakeFiles/kenlm.dir/read_arpa.cc.s

lm/CMakeFiles/kenlm.dir/read_arpa.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/read_arpa.cc.o.requires

lm/CMakeFiles/kenlm.dir/read_arpa.cc.o.provides: lm/CMakeFiles/kenlm.dir/read_arpa.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/read_arpa.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/read_arpa.cc.o.provides

lm/CMakeFiles/kenlm.dir/read_arpa.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/read_arpa.cc.o


lm/CMakeFiles/kenlm.dir/search_hashed.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/search_hashed.cc.o: ../lm/search_hashed.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object lm/CMakeFiles/kenlm.dir/search_hashed.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/search_hashed.cc.o -c /home/jeremie/dev/kenlm/lm/search_hashed.cc

lm/CMakeFiles/kenlm.dir/search_hashed.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/search_hashed.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/search_hashed.cc > CMakeFiles/kenlm.dir/search_hashed.cc.i

lm/CMakeFiles/kenlm.dir/search_hashed.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/search_hashed.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/search_hashed.cc -o CMakeFiles/kenlm.dir/search_hashed.cc.s

lm/CMakeFiles/kenlm.dir/search_hashed.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/search_hashed.cc.o.requires

lm/CMakeFiles/kenlm.dir/search_hashed.cc.o.provides: lm/CMakeFiles/kenlm.dir/search_hashed.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/search_hashed.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/search_hashed.cc.o.provides

lm/CMakeFiles/kenlm.dir/search_hashed.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/search_hashed.cc.o


lm/CMakeFiles/kenlm.dir/search_trie.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/search_trie.cc.o: ../lm/search_trie.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object lm/CMakeFiles/kenlm.dir/search_trie.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/search_trie.cc.o -c /home/jeremie/dev/kenlm/lm/search_trie.cc

lm/CMakeFiles/kenlm.dir/search_trie.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/search_trie.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/search_trie.cc > CMakeFiles/kenlm.dir/search_trie.cc.i

lm/CMakeFiles/kenlm.dir/search_trie.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/search_trie.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/search_trie.cc -o CMakeFiles/kenlm.dir/search_trie.cc.s

lm/CMakeFiles/kenlm.dir/search_trie.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/search_trie.cc.o.requires

lm/CMakeFiles/kenlm.dir/search_trie.cc.o.provides: lm/CMakeFiles/kenlm.dir/search_trie.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/search_trie.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/search_trie.cc.o.provides

lm/CMakeFiles/kenlm.dir/search_trie.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/search_trie.cc.o


lm/CMakeFiles/kenlm.dir/sizes.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/sizes.cc.o: ../lm/sizes.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object lm/CMakeFiles/kenlm.dir/sizes.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/sizes.cc.o -c /home/jeremie/dev/kenlm/lm/sizes.cc

lm/CMakeFiles/kenlm.dir/sizes.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/sizes.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/sizes.cc > CMakeFiles/kenlm.dir/sizes.cc.i

lm/CMakeFiles/kenlm.dir/sizes.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/sizes.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/sizes.cc -o CMakeFiles/kenlm.dir/sizes.cc.s

lm/CMakeFiles/kenlm.dir/sizes.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/sizes.cc.o.requires

lm/CMakeFiles/kenlm.dir/sizes.cc.o.provides: lm/CMakeFiles/kenlm.dir/sizes.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/sizes.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/sizes.cc.o.provides

lm/CMakeFiles/kenlm.dir/sizes.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/sizes.cc.o


lm/CMakeFiles/kenlm.dir/trie.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/trie.cc.o: ../lm/trie.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object lm/CMakeFiles/kenlm.dir/trie.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/trie.cc.o -c /home/jeremie/dev/kenlm/lm/trie.cc

lm/CMakeFiles/kenlm.dir/trie.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/trie.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/trie.cc > CMakeFiles/kenlm.dir/trie.cc.i

lm/CMakeFiles/kenlm.dir/trie.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/trie.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/trie.cc -o CMakeFiles/kenlm.dir/trie.cc.s

lm/CMakeFiles/kenlm.dir/trie.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/trie.cc.o.requires

lm/CMakeFiles/kenlm.dir/trie.cc.o.provides: lm/CMakeFiles/kenlm.dir/trie.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/trie.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/trie.cc.o.provides

lm/CMakeFiles/kenlm.dir/trie.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/trie.cc.o


lm/CMakeFiles/kenlm.dir/trie_sort.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/trie_sort.cc.o: ../lm/trie_sort.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object lm/CMakeFiles/kenlm.dir/trie_sort.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/trie_sort.cc.o -c /home/jeremie/dev/kenlm/lm/trie_sort.cc

lm/CMakeFiles/kenlm.dir/trie_sort.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/trie_sort.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/trie_sort.cc > CMakeFiles/kenlm.dir/trie_sort.cc.i

lm/CMakeFiles/kenlm.dir/trie_sort.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/trie_sort.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/trie_sort.cc -o CMakeFiles/kenlm.dir/trie_sort.cc.s

lm/CMakeFiles/kenlm.dir/trie_sort.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/trie_sort.cc.o.requires

lm/CMakeFiles/kenlm.dir/trie_sort.cc.o.provides: lm/CMakeFiles/kenlm.dir/trie_sort.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/trie_sort.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/trie_sort.cc.o.provides

lm/CMakeFiles/kenlm.dir/trie_sort.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/trie_sort.cc.o


lm/CMakeFiles/kenlm.dir/value_build.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/value_build.cc.o: ../lm/value_build.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object lm/CMakeFiles/kenlm.dir/value_build.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/value_build.cc.o -c /home/jeremie/dev/kenlm/lm/value_build.cc

lm/CMakeFiles/kenlm.dir/value_build.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/value_build.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/value_build.cc > CMakeFiles/kenlm.dir/value_build.cc.i

lm/CMakeFiles/kenlm.dir/value_build.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/value_build.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/value_build.cc -o CMakeFiles/kenlm.dir/value_build.cc.s

lm/CMakeFiles/kenlm.dir/value_build.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/value_build.cc.o.requires

lm/CMakeFiles/kenlm.dir/value_build.cc.o.provides: lm/CMakeFiles/kenlm.dir/value_build.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/value_build.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/value_build.cc.o.provides

lm/CMakeFiles/kenlm.dir/value_build.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/value_build.cc.o


lm/CMakeFiles/kenlm.dir/virtual_interface.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/virtual_interface.cc.o: ../lm/virtual_interface.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object lm/CMakeFiles/kenlm.dir/virtual_interface.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/virtual_interface.cc.o -c /home/jeremie/dev/kenlm/lm/virtual_interface.cc

lm/CMakeFiles/kenlm.dir/virtual_interface.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/virtual_interface.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/virtual_interface.cc > CMakeFiles/kenlm.dir/virtual_interface.cc.i

lm/CMakeFiles/kenlm.dir/virtual_interface.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/virtual_interface.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/virtual_interface.cc -o CMakeFiles/kenlm.dir/virtual_interface.cc.s

lm/CMakeFiles/kenlm.dir/virtual_interface.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/virtual_interface.cc.o.requires

lm/CMakeFiles/kenlm.dir/virtual_interface.cc.o.provides: lm/CMakeFiles/kenlm.dir/virtual_interface.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/virtual_interface.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/virtual_interface.cc.o.provides

lm/CMakeFiles/kenlm.dir/virtual_interface.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/virtual_interface.cc.o


lm/CMakeFiles/kenlm.dir/vocab.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/vocab.cc.o: ../lm/vocab.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object lm/CMakeFiles/kenlm.dir/vocab.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/vocab.cc.o -c /home/jeremie/dev/kenlm/lm/vocab.cc

lm/CMakeFiles/kenlm.dir/vocab.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/vocab.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/vocab.cc > CMakeFiles/kenlm.dir/vocab.cc.i

lm/CMakeFiles/kenlm.dir/vocab.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/vocab.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/vocab.cc -o CMakeFiles/kenlm.dir/vocab.cc.s

lm/CMakeFiles/kenlm.dir/vocab.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/vocab.cc.o.requires

lm/CMakeFiles/kenlm.dir/vocab.cc.o.provides: lm/CMakeFiles/kenlm.dir/vocab.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/vocab.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/vocab.cc.o.provides

lm/CMakeFiles/kenlm.dir/vocab.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/vocab.cc.o


lm/CMakeFiles/kenlm.dir/common/model_buffer.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/common/model_buffer.cc.o: ../lm/common/model_buffer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object lm/CMakeFiles/kenlm.dir/common/model_buffer.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/common/model_buffer.cc.o -c /home/jeremie/dev/kenlm/lm/common/model_buffer.cc

lm/CMakeFiles/kenlm.dir/common/model_buffer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/common/model_buffer.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/common/model_buffer.cc > CMakeFiles/kenlm.dir/common/model_buffer.cc.i

lm/CMakeFiles/kenlm.dir/common/model_buffer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/common/model_buffer.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/common/model_buffer.cc -o CMakeFiles/kenlm.dir/common/model_buffer.cc.s

lm/CMakeFiles/kenlm.dir/common/model_buffer.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/common/model_buffer.cc.o.requires

lm/CMakeFiles/kenlm.dir/common/model_buffer.cc.o.provides: lm/CMakeFiles/kenlm.dir/common/model_buffer.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/common/model_buffer.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/common/model_buffer.cc.o.provides

lm/CMakeFiles/kenlm.dir/common/model_buffer.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/common/model_buffer.cc.o


lm/CMakeFiles/kenlm.dir/common/print.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/common/print.cc.o: ../lm/common/print.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object lm/CMakeFiles/kenlm.dir/common/print.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/common/print.cc.o -c /home/jeremie/dev/kenlm/lm/common/print.cc

lm/CMakeFiles/kenlm.dir/common/print.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/common/print.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/common/print.cc > CMakeFiles/kenlm.dir/common/print.cc.i

lm/CMakeFiles/kenlm.dir/common/print.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/common/print.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/common/print.cc -o CMakeFiles/kenlm.dir/common/print.cc.s

lm/CMakeFiles/kenlm.dir/common/print.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/common/print.cc.o.requires

lm/CMakeFiles/kenlm.dir/common/print.cc.o.provides: lm/CMakeFiles/kenlm.dir/common/print.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/common/print.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/common/print.cc.o.provides

lm/CMakeFiles/kenlm.dir/common/print.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/common/print.cc.o


lm/CMakeFiles/kenlm.dir/common/renumber.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/common/renumber.cc.o: ../lm/common/renumber.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object lm/CMakeFiles/kenlm.dir/common/renumber.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/common/renumber.cc.o -c /home/jeremie/dev/kenlm/lm/common/renumber.cc

lm/CMakeFiles/kenlm.dir/common/renumber.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/common/renumber.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/common/renumber.cc > CMakeFiles/kenlm.dir/common/renumber.cc.i

lm/CMakeFiles/kenlm.dir/common/renumber.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/common/renumber.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/common/renumber.cc -o CMakeFiles/kenlm.dir/common/renumber.cc.s

lm/CMakeFiles/kenlm.dir/common/renumber.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/common/renumber.cc.o.requires

lm/CMakeFiles/kenlm.dir/common/renumber.cc.o.provides: lm/CMakeFiles/kenlm.dir/common/renumber.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/common/renumber.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/common/renumber.cc.o.provides

lm/CMakeFiles/kenlm.dir/common/renumber.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/common/renumber.cc.o


lm/CMakeFiles/kenlm.dir/common/size_option.cc.o: lm/CMakeFiles/kenlm.dir/flags.make
lm/CMakeFiles/kenlm.dir/common/size_option.cc.o: ../lm/common/size_option.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object lm/CMakeFiles/kenlm.dir/common/size_option.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kenlm.dir/common/size_option.cc.o -c /home/jeremie/dev/kenlm/lm/common/size_option.cc

lm/CMakeFiles/kenlm.dir/common/size_option.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kenlm.dir/common/size_option.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/common/size_option.cc > CMakeFiles/kenlm.dir/common/size_option.cc.i

lm/CMakeFiles/kenlm.dir/common/size_option.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kenlm.dir/common/size_option.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/common/size_option.cc -o CMakeFiles/kenlm.dir/common/size_option.cc.s

lm/CMakeFiles/kenlm.dir/common/size_option.cc.o.requires:

.PHONY : lm/CMakeFiles/kenlm.dir/common/size_option.cc.o.requires

lm/CMakeFiles/kenlm.dir/common/size_option.cc.o.provides: lm/CMakeFiles/kenlm.dir/common/size_option.cc.o.requires
	$(MAKE) -f lm/CMakeFiles/kenlm.dir/build.make lm/CMakeFiles/kenlm.dir/common/size_option.cc.o.provides.build
.PHONY : lm/CMakeFiles/kenlm.dir/common/size_option.cc.o.provides

lm/CMakeFiles/kenlm.dir/common/size_option.cc.o.provides.build: lm/CMakeFiles/kenlm.dir/common/size_option.cc.o


# Object files for target kenlm
kenlm_OBJECTS = \
"CMakeFiles/kenlm.dir/bhiksha.cc.o" \
"CMakeFiles/kenlm.dir/binary_format.cc.o" \
"CMakeFiles/kenlm.dir/config.cc.o" \
"CMakeFiles/kenlm.dir/lm_exception.cc.o" \
"CMakeFiles/kenlm.dir/model.cc.o" \
"CMakeFiles/kenlm.dir/quantize.cc.o" \
"CMakeFiles/kenlm.dir/read_arpa.cc.o" \
"CMakeFiles/kenlm.dir/search_hashed.cc.o" \
"CMakeFiles/kenlm.dir/search_trie.cc.o" \
"CMakeFiles/kenlm.dir/sizes.cc.o" \
"CMakeFiles/kenlm.dir/trie.cc.o" \
"CMakeFiles/kenlm.dir/trie_sort.cc.o" \
"CMakeFiles/kenlm.dir/value_build.cc.o" \
"CMakeFiles/kenlm.dir/virtual_interface.cc.o" \
"CMakeFiles/kenlm.dir/vocab.cc.o" \
"CMakeFiles/kenlm.dir/common/model_buffer.cc.o" \
"CMakeFiles/kenlm.dir/common/print.cc.o" \
"CMakeFiles/kenlm.dir/common/renumber.cc.o" \
"CMakeFiles/kenlm.dir/common/size_option.cc.o"

# External object files for target kenlm
kenlm_EXTERNAL_OBJECTS =

lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/bhiksha.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/binary_format.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/config.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/lm_exception.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/model.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/quantize.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/read_arpa.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/search_hashed.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/search_trie.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/sizes.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/trie.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/trie_sort.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/value_build.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/virtual_interface.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/vocab.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/common/model_buffer.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/common/print.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/common/renumber.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/common/size_option.cc.o
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/build.make
lib/libkenlm.a: lm/CMakeFiles/kenlm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Linking CXX static library ../lib/libkenlm.a"
	cd /home/jeremie/dev/kenlm/build/lm && $(CMAKE_COMMAND) -P CMakeFiles/kenlm.dir/cmake_clean_target.cmake
	cd /home/jeremie/dev/kenlm/build/lm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kenlm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lm/CMakeFiles/kenlm.dir/build: lib/libkenlm.a

.PHONY : lm/CMakeFiles/kenlm.dir/build

lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/bhiksha.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/binary_format.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/config.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/lm_exception.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/model.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/quantize.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/read_arpa.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/search_hashed.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/search_trie.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/sizes.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/trie.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/trie_sort.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/value_build.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/virtual_interface.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/vocab.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/common/model_buffer.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/common/print.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/common/renumber.cc.o.requires
lm/CMakeFiles/kenlm.dir/requires: lm/CMakeFiles/kenlm.dir/common/size_option.cc.o.requires

.PHONY : lm/CMakeFiles/kenlm.dir/requires

lm/CMakeFiles/kenlm.dir/clean:
	cd /home/jeremie/dev/kenlm/build/lm && $(CMAKE_COMMAND) -P CMakeFiles/kenlm.dir/cmake_clean.cmake
.PHONY : lm/CMakeFiles/kenlm.dir/clean

lm/CMakeFiles/kenlm.dir/depend:
	cd /home/jeremie/dev/kenlm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jeremie/dev/kenlm /home/jeremie/dev/kenlm/lm /home/jeremie/dev/kenlm/build /home/jeremie/dev/kenlm/build/lm /home/jeremie/dev/kenlm/build/lm/CMakeFiles/kenlm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lm/CMakeFiles/kenlm.dir/depend

