# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aurelien/src/templates/kde4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aurelien/src/templates/kde4/build

# Include any dependencies generated for this target.
include CMakeFiles/kde4app.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/kde4app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kde4app.dir/flags.make

CMakeFiles/kde4app.dir/kde4app_automoc.o: CMakeFiles/kde4app.dir/flags.make
CMakeFiles/kde4app.dir/kde4app_automoc.o: kde4app_automoc.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/aurelien/src/templates/kde4/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/kde4app.dir/kde4app_automoc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kde4app.dir/kde4app_automoc.o -c /home/aurelien/src/templates/kde4/build/kde4app_automoc.cpp

CMakeFiles/kde4app.dir/kde4app_automoc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kde4app.dir/kde4app_automoc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/aurelien/src/templates/kde4/build/kde4app_automoc.cpp > CMakeFiles/kde4app.dir/kde4app_automoc.i

CMakeFiles/kde4app.dir/kde4app_automoc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kde4app.dir/kde4app_automoc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/aurelien/src/templates/kde4/build/kde4app_automoc.cpp -o CMakeFiles/kde4app.dir/kde4app_automoc.s

CMakeFiles/kde4app.dir/kde4app_automoc.o.requires:
.PHONY : CMakeFiles/kde4app.dir/kde4app_automoc.o.requires

CMakeFiles/kde4app.dir/kde4app_automoc.o.provides: CMakeFiles/kde4app.dir/kde4app_automoc.o.requires
	$(MAKE) -f CMakeFiles/kde4app.dir/build.make CMakeFiles/kde4app.dir/kde4app_automoc.o.provides.build
.PHONY : CMakeFiles/kde4app.dir/kde4app_automoc.o.provides

CMakeFiles/kde4app.dir/kde4app_automoc.o.provides.build: CMakeFiles/kde4app.dir/kde4app_automoc.o

CMakeFiles/kde4app.dir/main.o: CMakeFiles/kde4app.dir/flags.make
CMakeFiles/kde4app.dir/main.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/aurelien/src/templates/kde4/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/kde4app.dir/main.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kde4app.dir/main.o -c /home/aurelien/src/templates/kde4/main.cpp

CMakeFiles/kde4app.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kde4app.dir/main.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/aurelien/src/templates/kde4/main.cpp > CMakeFiles/kde4app.dir/main.i

CMakeFiles/kde4app.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kde4app.dir/main.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/aurelien/src/templates/kde4/main.cpp -o CMakeFiles/kde4app.dir/main.s

CMakeFiles/kde4app.dir/main.o.requires:
.PHONY : CMakeFiles/kde4app.dir/main.o.requires

CMakeFiles/kde4app.dir/main.o.provides: CMakeFiles/kde4app.dir/main.o.requires
	$(MAKE) -f CMakeFiles/kde4app.dir/build.make CMakeFiles/kde4app.dir/main.o.provides.build
.PHONY : CMakeFiles/kde4app.dir/main.o.provides

CMakeFiles/kde4app.dir/main.o.provides.build: CMakeFiles/kde4app.dir/main.o

# Object files for target kde4app
kde4app_OBJECTS = \
"CMakeFiles/kde4app.dir/kde4app_automoc.o" \
"CMakeFiles/kde4app.dir/main.o"

# External object files for target kde4app
kde4app_EXTERNAL_OBJECTS =

kde4app: CMakeFiles/kde4app.dir/kde4app_automoc.o
kde4app: CMakeFiles/kde4app.dir/main.o
kde4app: /usr/lib/libkfile.so.4.8.0
kde4app: /usr/lib/libkio.so.5.8.0
kde4app: /usr/lib/x86_64-linux-gnu/libQtCore.so
kde4app: /usr/lib/x86_64-linux-gnu/libQtNetwork.so
kde4app: /usr/lib/x86_64-linux-gnu/libQtXml.so
kde4app: /usr/lib/libkdeui.so.5.8.0
kde4app: /usr/lib/x86_64-linux-gnu/libQtSvg.so
kde4app: /usr/lib/libkdecore.so.5.8.0
kde4app: /usr/lib/x86_64-linux-gnu/libQtCore.so
kde4app: /usr/lib/x86_64-linux-gnu/libQtDBus.so
kde4app: /usr/lib/x86_64-linux-gnu/libQtGui.so
kde4app: CMakeFiles/kde4app.dir/build.make
kde4app: CMakeFiles/kde4app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable kde4app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kde4app.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -D_filename=/home/aurelien/src/templates/kde4/build/kde4app.shell -D_library_path_variable=LD_LIBRARY_PATH -D_ld_library_path="/home/aurelien/src/templates/kde4/build/lib/./:/usr/local/lib:/usr/lib:/usr/lib/x86_64-linux-gnu" -D_executable=/home/aurelien/src/templates/kde4/build/kde4app -P /usr/share/kde4/apps/cmake/modules/kde4_exec_via_sh.cmake

# Rule to build all files generated by this target.
CMakeFiles/kde4app.dir/build: kde4app
.PHONY : CMakeFiles/kde4app.dir/build

CMakeFiles/kde4app.dir/requires: CMakeFiles/kde4app.dir/kde4app_automoc.o.requires
CMakeFiles/kde4app.dir/requires: CMakeFiles/kde4app.dir/main.o.requires
.PHONY : CMakeFiles/kde4app.dir/requires

CMakeFiles/kde4app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kde4app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kde4app.dir/clean

CMakeFiles/kde4app.dir/depend:
	cd /home/aurelien/src/templates/kde4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aurelien/src/templates/kde4 /home/aurelien/src/templates/kde4 /home/aurelien/src/templates/kde4/build /home/aurelien/src/templates/kde4/build /home/aurelien/src/templates/kde4/build/CMakeFiles/kde4app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kde4app.dir/depend
