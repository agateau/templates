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
include CMakeFiles/testknotify.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testknotify.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testknotify.dir/flags.make

CMakeFiles/testknotify.dir/testknotify_automoc.o: CMakeFiles/testknotify.dir/flags.make
CMakeFiles/testknotify.dir/testknotify_automoc.o: testknotify_automoc.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/aurelien/src/templates/kde4/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/testknotify.dir/testknotify_automoc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/testknotify.dir/testknotify_automoc.o -c /home/aurelien/src/templates/kde4/build/testknotify_automoc.cpp

CMakeFiles/testknotify.dir/testknotify_automoc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testknotify.dir/testknotify_automoc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/aurelien/src/templates/kde4/build/testknotify_automoc.cpp > CMakeFiles/testknotify.dir/testknotify_automoc.i

CMakeFiles/testknotify.dir/testknotify_automoc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testknotify.dir/testknotify_automoc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/aurelien/src/templates/kde4/build/testknotify_automoc.cpp -o CMakeFiles/testknotify.dir/testknotify_automoc.s

CMakeFiles/testknotify.dir/testknotify_automoc.o.requires:
.PHONY : CMakeFiles/testknotify.dir/testknotify_automoc.o.requires

CMakeFiles/testknotify.dir/testknotify_automoc.o.provides: CMakeFiles/testknotify.dir/testknotify_automoc.o.requires
	$(MAKE) -f CMakeFiles/testknotify.dir/build.make CMakeFiles/testknotify.dir/testknotify_automoc.o.provides.build
.PHONY : CMakeFiles/testknotify.dir/testknotify_automoc.o.provides

CMakeFiles/testknotify.dir/testknotify_automoc.o.provides.build: CMakeFiles/testknotify.dir/testknotify_automoc.o

CMakeFiles/testknotify.dir/main.o: CMakeFiles/testknotify.dir/flags.make
CMakeFiles/testknotify.dir/main.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/aurelien/src/templates/kde4/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/testknotify.dir/main.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/testknotify.dir/main.o -c /home/aurelien/src/templates/kde4/main.cpp

CMakeFiles/testknotify.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testknotify.dir/main.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/aurelien/src/templates/kde4/main.cpp > CMakeFiles/testknotify.dir/main.i

CMakeFiles/testknotify.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testknotify.dir/main.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/aurelien/src/templates/kde4/main.cpp -o CMakeFiles/testknotify.dir/main.s

CMakeFiles/testknotify.dir/main.o.requires:
.PHONY : CMakeFiles/testknotify.dir/main.o.requires

CMakeFiles/testknotify.dir/main.o.provides: CMakeFiles/testknotify.dir/main.o.requires
	$(MAKE) -f CMakeFiles/testknotify.dir/build.make CMakeFiles/testknotify.dir/main.o.provides.build
.PHONY : CMakeFiles/testknotify.dir/main.o.provides

CMakeFiles/testknotify.dir/main.o.provides.build: CMakeFiles/testknotify.dir/main.o

# Object files for target testknotify
testknotify_OBJECTS = \
"CMakeFiles/testknotify.dir/testknotify_automoc.o" \
"CMakeFiles/testknotify.dir/main.o"

# External object files for target testknotify
testknotify_EXTERNAL_OBJECTS =

testknotify: CMakeFiles/testknotify.dir/testknotify_automoc.o
testknotify: CMakeFiles/testknotify.dir/main.o
testknotify: /usr/lib/libkfile.so.4.8.0
testknotify: /usr/lib/libkio.so.5.8.0
testknotify: /usr/lib/x86_64-linux-gnu/libQtCore.so
testknotify: /usr/lib/x86_64-linux-gnu/libQtNetwork.so
testknotify: /usr/lib/x86_64-linux-gnu/libQtXml.so
testknotify: /usr/lib/libkdeui.so.5.8.0
testknotify: /usr/lib/x86_64-linux-gnu/libQtSvg.so
testknotify: /usr/lib/libkdecore.so.5.8.0
testknotify: /usr/lib/x86_64-linux-gnu/libQtCore.so
testknotify: /usr/lib/x86_64-linux-gnu/libQtDBus.so
testknotify: /usr/lib/x86_64-linux-gnu/libQtGui.so
testknotify: CMakeFiles/testknotify.dir/build.make
testknotify: CMakeFiles/testknotify.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable testknotify"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testknotify.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -D_filename=/home/aurelien/src/templates/kde4/build/testknotify.shell -D_library_path_variable=LD_LIBRARY_PATH -D_ld_library_path="/home/aurelien/src/templates/kde4/build/lib/./:/usr/local/lib:/usr/lib:/usr/lib/x86_64-linux-gnu" -D_executable=/home/aurelien/src/templates/kde4/build/testknotify -P /usr/share/kde4/apps/cmake/modules/kde4_exec_via_sh.cmake

# Rule to build all files generated by this target.
CMakeFiles/testknotify.dir/build: testknotify
.PHONY : CMakeFiles/testknotify.dir/build

CMakeFiles/testknotify.dir/requires: CMakeFiles/testknotify.dir/testknotify_automoc.o.requires
CMakeFiles/testknotify.dir/requires: CMakeFiles/testknotify.dir/main.o.requires
.PHONY : CMakeFiles/testknotify.dir/requires

CMakeFiles/testknotify.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testknotify.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testknotify.dir/clean

CMakeFiles/testknotify.dir/depend:
	cd /home/aurelien/src/templates/kde4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aurelien/src/templates/kde4 /home/aurelien/src/templates/kde4 /home/aurelien/src/templates/kde4/build /home/aurelien/src/templates/kde4/build /home/aurelien/src/templates/kde4/build/CMakeFiles/testknotify.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testknotify.dir/depend
