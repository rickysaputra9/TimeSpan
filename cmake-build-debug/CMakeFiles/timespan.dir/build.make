# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Users/rickysaputra/Desktop/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Users/rickysaputra/Desktop/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/timespan.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/timespan.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/timespan.dir/flags.make

CMakeFiles/timespan.dir/main.cpp.o: CMakeFiles/timespan.dir/flags.make
CMakeFiles/timespan.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/timespan.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/timespan.dir/main.cpp.o -c "/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master/main.cpp"

CMakeFiles/timespan.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/timespan.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master/main.cpp" > CMakeFiles/timespan.dir/main.cpp.i

CMakeFiles/timespan.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/timespan.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master/main.cpp" -o CMakeFiles/timespan.dir/main.cpp.s

CMakeFiles/timespan.dir/timespan.cpp.o: CMakeFiles/timespan.dir/flags.make
CMakeFiles/timespan.dir/timespan.cpp.o: ../timespan.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/timespan.dir/timespan.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/timespan.dir/timespan.cpp.o -c "/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master/timespan.cpp"

CMakeFiles/timespan.dir/timespan.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/timespan.dir/timespan.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master/timespan.cpp" > CMakeFiles/timespan.dir/timespan.cpp.i

CMakeFiles/timespan.dir/timespan.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/timespan.dir/timespan.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master/timespan.cpp" -o CMakeFiles/timespan.dir/timespan.cpp.s

# Object files for target timespan
timespan_OBJECTS = \
"CMakeFiles/timespan.dir/main.cpp.o" \
"CMakeFiles/timespan.dir/timespan.cpp.o"

# External object files for target timespan
timespan_EXTERNAL_OBJECTS =

timespan: CMakeFiles/timespan.dir/main.cpp.o
timespan: CMakeFiles/timespan.dir/timespan.cpp.o
timespan: CMakeFiles/timespan.dir/build.make
timespan: CMakeFiles/timespan.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable timespan"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/timespan.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/timespan.dir/build: timespan

.PHONY : CMakeFiles/timespan.dir/build

CMakeFiles/timespan.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/timespan.dir/cmake_clean.cmake
.PHONY : CMakeFiles/timespan.dir/clean

CMakeFiles/timespan.dir/depend:
	cd "/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master" "/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master" "/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master/cmake-build-debug" "/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master/cmake-build-debug" "/Users/rickysaputra/Desktop/UW/CSS 342 Elliott/Assignment 2/timespan-master/cmake-build-debug/CMakeFiles/timespan.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/timespan.dir/depend

