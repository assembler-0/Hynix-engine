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
CMAKE_SOURCE_DIR = /workspaces/HexaCore

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/HexaCore/build

# Include any dependencies generated for this target.
include CMakeFiles/HexaCore.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/HexaCore.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HexaCore.dir/flags.make

CMakeFiles/HexaCore.dir/src/main.cpp.o: CMakeFiles/HexaCore.dir/flags.make
CMakeFiles/HexaCore.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/HexaCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HexaCore.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HexaCore.dir/src/main.cpp.o -c /workspaces/HexaCore/src/main.cpp

CMakeFiles/HexaCore.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HexaCore.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/HexaCore/src/main.cpp > CMakeFiles/HexaCore.dir/src/main.cpp.i

CMakeFiles/HexaCore.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HexaCore.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/HexaCore/src/main.cpp -o CMakeFiles/HexaCore.dir/src/main.cpp.s

# Object files for target HexaCore
HexaCore_OBJECTS = \
"CMakeFiles/HexaCore.dir/src/main.cpp.o"

# External object files for target HexaCore
HexaCore_EXTERNAL_OBJECTS =

HexaCore: CMakeFiles/HexaCore.dir/src/main.cpp.o
HexaCore: CMakeFiles/HexaCore.dir/build.make
HexaCore: CMakeFiles/HexaCore.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/HexaCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable HexaCore"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HexaCore.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HexaCore.dir/build: HexaCore

.PHONY : CMakeFiles/HexaCore.dir/build

CMakeFiles/HexaCore.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HexaCore.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HexaCore.dir/clean

CMakeFiles/HexaCore.dir/depend:
	cd /workspaces/HexaCore/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/HexaCore /workspaces/HexaCore /workspaces/HexaCore/build /workspaces/HexaCore/build /workspaces/HexaCore/build/CMakeFiles/HexaCore.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HexaCore.dir/depend

