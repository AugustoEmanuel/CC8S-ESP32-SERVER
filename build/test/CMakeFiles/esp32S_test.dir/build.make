# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/augusto/Documents/ESP32_server/esp32S

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/augusto/Documents/ESP32_server/esp32S/build

# Include any dependencies generated for this target.
include test/CMakeFiles/esp32S_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/esp32S_test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/esp32S_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/esp32S_test.dir/flags.make

test/CMakeFiles/esp32S_test.dir/codegen:
.PHONY : test/CMakeFiles/esp32S_test.dir/codegen

test/CMakeFiles/esp32S_test.dir/test_main.cc.o: test/CMakeFiles/esp32S_test.dir/flags.make
test/CMakeFiles/esp32S_test.dir/test_main.cc.o: /home/augusto/Documents/ESP32_server/esp32S/test/test_main.cc
test/CMakeFiles/esp32S_test.dir/test_main.cc.o: test/CMakeFiles/esp32S_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/augusto/Documents/ESP32_server/esp32S/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/esp32S_test.dir/test_main.cc.o"
	cd /home/augusto/Documents/ESP32_server/esp32S/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/esp32S_test.dir/test_main.cc.o -MF CMakeFiles/esp32S_test.dir/test_main.cc.o.d -o CMakeFiles/esp32S_test.dir/test_main.cc.o -c /home/augusto/Documents/ESP32_server/esp32S/test/test_main.cc

test/CMakeFiles/esp32S_test.dir/test_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/esp32S_test.dir/test_main.cc.i"
	cd /home/augusto/Documents/ESP32_server/esp32S/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/augusto/Documents/ESP32_server/esp32S/test/test_main.cc > CMakeFiles/esp32S_test.dir/test_main.cc.i

test/CMakeFiles/esp32S_test.dir/test_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/esp32S_test.dir/test_main.cc.s"
	cd /home/augusto/Documents/ESP32_server/esp32S/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/augusto/Documents/ESP32_server/esp32S/test/test_main.cc -o CMakeFiles/esp32S_test.dir/test_main.cc.s

# Object files for target esp32S_test
esp32S_test_OBJECTS = \
"CMakeFiles/esp32S_test.dir/test_main.cc.o"

# External object files for target esp32S_test
esp32S_test_EXTERNAL_OBJECTS =

test/esp32S_test: test/CMakeFiles/esp32S_test.dir/test_main.cc.o
test/esp32S_test: test/CMakeFiles/esp32S_test.dir/build.make
test/esp32S_test: test/CMakeFiles/esp32S_test.dir/compiler_depend.ts
test/esp32S_test: /usr/lib/libdrogon.so.1.9.4
test/esp32S_test: /usr/lib/libtrantor.so.1.5.18
test/esp32S_test: /usr/lib/libjsoncpp.so
test/esp32S_test: test/CMakeFiles/esp32S_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/augusto/Documents/ESP32_server/esp32S/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable esp32S_test"
	cd /home/augusto/Documents/ESP32_server/esp32S/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/esp32S_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/esp32S_test.dir/build: test/esp32S_test
.PHONY : test/CMakeFiles/esp32S_test.dir/build

test/CMakeFiles/esp32S_test.dir/clean:
	cd /home/augusto/Documents/ESP32_server/esp32S/build/test && $(CMAKE_COMMAND) -P CMakeFiles/esp32S_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/esp32S_test.dir/clean

test/CMakeFiles/esp32S_test.dir/depend:
	cd /home/augusto/Documents/ESP32_server/esp32S/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/augusto/Documents/ESP32_server/esp32S /home/augusto/Documents/ESP32_server/esp32S/test /home/augusto/Documents/ESP32_server/esp32S/build /home/augusto/Documents/ESP32_server/esp32S/build/test /home/augusto/Documents/ESP32_server/esp32S/build/test/CMakeFiles/esp32S_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/esp32S_test.dir/depend

