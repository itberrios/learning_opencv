# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.25

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\itber\Documents\learning\self_tutorials\learning_opencv\ch2\pixel_values

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\itber\Documents\learning\self_tutorials\learning_opencv\ch2\pixel_values\build

# Include any dependencies generated for this target.
include CMakeFiles/pixel_values.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/pixel_values.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pixel_values.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pixel_values.dir/flags.make

CMakeFiles/pixel_values.dir/main.cpp.obj: CMakeFiles/pixel_values.dir/flags.make
CMakeFiles/pixel_values.dir/main.cpp.obj: CMakeFiles/pixel_values.dir/includes_CXX.rsp
CMakeFiles/pixel_values.dir/main.cpp.obj: C:/Users/itber/Documents/learning/self_tutorials/learning_opencv/ch2/pixel_values/main.cpp
CMakeFiles/pixel_values.dir/main.cpp.obj: CMakeFiles/pixel_values.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\itber\Documents\learning\self_tutorials\learning_opencv\ch2\pixel_values\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pixel_values.dir/main.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pixel_values.dir/main.cpp.obj -MF CMakeFiles\pixel_values.dir\main.cpp.obj.d -o CMakeFiles\pixel_values.dir\main.cpp.obj -c C:\Users\itber\Documents\learning\self_tutorials\learning_opencv\ch2\pixel_values\main.cpp

CMakeFiles/pixel_values.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pixel_values.dir/main.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\itber\Documents\learning\self_tutorials\learning_opencv\ch2\pixel_values\main.cpp > CMakeFiles\pixel_values.dir\main.cpp.i

CMakeFiles/pixel_values.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pixel_values.dir/main.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\itber\Documents\learning\self_tutorials\learning_opencv\ch2\pixel_values\main.cpp -o CMakeFiles\pixel_values.dir\main.cpp.s

# Object files for target pixel_values
pixel_values_OBJECTS = \
"CMakeFiles/pixel_values.dir/main.cpp.obj"

# External object files for target pixel_values
pixel_values_EXTERNAL_OBJECTS =

pixel_values.exe: CMakeFiles/pixel_values.dir/main.cpp.obj
pixel_values.exe: CMakeFiles/pixel_values.dir/build.make
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_img_hash470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: C:/Users/itber/lib/opencv_libs/mingw64.4.7.0/build/install/x64/mingw/lib/libopencv_world470.dll.a
pixel_values.exe: CMakeFiles/pixel_values.dir/linkLibs.rsp
pixel_values.exe: CMakeFiles/pixel_values.dir/objects1
pixel_values.exe: CMakeFiles/pixel_values.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\itber\Documents\learning\self_tutorials\learning_opencv\ch2\pixel_values\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pixel_values.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\pixel_values.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pixel_values.dir/build: pixel_values.exe
.PHONY : CMakeFiles/pixel_values.dir/build

CMakeFiles/pixel_values.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\pixel_values.dir\cmake_clean.cmake
.PHONY : CMakeFiles/pixel_values.dir/clean

CMakeFiles/pixel_values.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\itber\Documents\learning\self_tutorials\learning_opencv\ch2\pixel_values C:\Users\itber\Documents\learning\self_tutorials\learning_opencv\ch2\pixel_values C:\Users\itber\Documents\learning\self_tutorials\learning_opencv\ch2\pixel_values\build C:\Users\itber\Documents\learning\self_tutorials\learning_opencv\ch2\pixel_values\build C:\Users\itber\Documents\learning\self_tutorials\learning_opencv\ch2\pixel_values\build\CMakeFiles\pixel_values.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pixel_values.dir/depend

