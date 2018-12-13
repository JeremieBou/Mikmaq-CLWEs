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
include lm/filter/CMakeFiles/phrase_table_vocab.dir/depend.make

# Include the progress variables for this target.
include lm/filter/CMakeFiles/phrase_table_vocab.dir/progress.make

# Include the compile flags for this target's objects.
include lm/filter/CMakeFiles/phrase_table_vocab.dir/flags.make

lm/filter/CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.o: lm/filter/CMakeFiles/phrase_table_vocab.dir/flags.make
lm/filter/CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.o: ../lm/filter/phrase_table_vocab_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lm/filter/CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.o"
	cd /home/jeremie/dev/kenlm/build/lm/filter && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.o -c /home/jeremie/dev/kenlm/lm/filter/phrase_table_vocab_main.cc

lm/filter/CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.i"
	cd /home/jeremie/dev/kenlm/build/lm/filter && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeremie/dev/kenlm/lm/filter/phrase_table_vocab_main.cc > CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.i

lm/filter/CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.s"
	cd /home/jeremie/dev/kenlm/build/lm/filter && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeremie/dev/kenlm/lm/filter/phrase_table_vocab_main.cc -o CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.s

lm/filter/CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.o.requires:

.PHONY : lm/filter/CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.o.requires

lm/filter/CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.o.provides: lm/filter/CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.o.requires
	$(MAKE) -f lm/filter/CMakeFiles/phrase_table_vocab.dir/build.make lm/filter/CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.o.provides.build
.PHONY : lm/filter/CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.o.provides

lm/filter/CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.o.provides.build: lm/filter/CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.o


# Object files for target phrase_table_vocab
phrase_table_vocab_OBJECTS = \
"CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.o"

# External object files for target phrase_table_vocab
phrase_table_vocab_EXTERNAL_OBJECTS =

bin/phrase_table_vocab: lm/filter/CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.o
bin/phrase_table_vocab: lm/filter/CMakeFiles/phrase_table_vocab.dir/build.make
bin/phrase_table_vocab: lib/libkenlm_filter.a
bin/phrase_table_vocab: lib/libkenlm.a
bin/phrase_table_vocab: lib/libkenlm_util.a
bin/phrase_table_vocab: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
bin/phrase_table_vocab: /usr/lib/x86_64-linux-gnu/libboost_system.so
bin/phrase_table_vocab: /usr/lib/x86_64-linux-gnu/libboost_thread.so
bin/phrase_table_vocab: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so
bin/phrase_table_vocab: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
bin/phrase_table_vocab: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
bin/phrase_table_vocab: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
bin/phrase_table_vocab: /usr/lib/x86_64-linux-gnu/libpthread.so
bin/phrase_table_vocab: /home/jeremie/anaconda3/lib/libz.so
bin/phrase_table_vocab: /home/jeremie/anaconda3/lib/libbz2.so
bin/phrase_table_vocab: /home/jeremie/anaconda3/lib/liblzma.so
bin/phrase_table_vocab: lm/filter/CMakeFiles/phrase_table_vocab.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jeremie/dev/kenlm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/phrase_table_vocab"
	cd /home/jeremie/dev/kenlm/build/lm/filter && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/phrase_table_vocab.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lm/filter/CMakeFiles/phrase_table_vocab.dir/build: bin/phrase_table_vocab

.PHONY : lm/filter/CMakeFiles/phrase_table_vocab.dir/build

lm/filter/CMakeFiles/phrase_table_vocab.dir/requires: lm/filter/CMakeFiles/phrase_table_vocab.dir/phrase_table_vocab_main.cc.o.requires

.PHONY : lm/filter/CMakeFiles/phrase_table_vocab.dir/requires

lm/filter/CMakeFiles/phrase_table_vocab.dir/clean:
	cd /home/jeremie/dev/kenlm/build/lm/filter && $(CMAKE_COMMAND) -P CMakeFiles/phrase_table_vocab.dir/cmake_clean.cmake
.PHONY : lm/filter/CMakeFiles/phrase_table_vocab.dir/clean

lm/filter/CMakeFiles/phrase_table_vocab.dir/depend:
	cd /home/jeremie/dev/kenlm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jeremie/dev/kenlm /home/jeremie/dev/kenlm/lm/filter /home/jeremie/dev/kenlm/build /home/jeremie/dev/kenlm/build/lm/filter /home/jeremie/dev/kenlm/build/lm/filter/CMakeFiles/phrase_table_vocab.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lm/filter/CMakeFiles/phrase_table_vocab.dir/depend

