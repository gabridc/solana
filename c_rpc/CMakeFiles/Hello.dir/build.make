# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /home/gabridc/clion-2021.1.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/gabridc/clion-2021.1.1/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gabridc/Repositorio/solana/c_rpc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gabridc/Repositorio/solana/c_rpc

# Include any dependencies generated for this target.
include CMakeFiles/Hello.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Hello.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Hello.dir/flags.make

qrc_qml.cpp: main.qml
qrc_qml.cpp: qml.qrc.depends
qrc_qml.cpp: qml.qrc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating qrc_qml.cpp"
	/home/gabridc/Qt/5.15.2/gcc_64/bin/rcc --name qml --output /home/gabridc/Repositorio/solana/c_rpc/qrc_qml.cpp /home/gabridc/Repositorio/solana/c_rpc/qml.qrc

CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.o: Hello_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.o -c /home/gabridc/Repositorio/solana/c_rpc/Hello_autogen/mocs_compilation.cpp

CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/Hello_autogen/mocs_compilation.cpp > CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.i

CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/Hello_autogen/mocs_compilation.cpp -o CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.s

CMakeFiles/Hello.dir/main.cpp.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Hello.dir/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello.dir/main.cpp.o -c /home/gabridc/Repositorio/solana/c_rpc/main.cpp

CMakeFiles/Hello.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello.dir/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/main.cpp > CMakeFiles/Hello.dir/main.cpp.i

CMakeFiles/Hello.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello.dir/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/main.cpp -o CMakeFiles/Hello.dir/main.cpp.s

CMakeFiles/Hello.dir/Hello.cpp.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/Hello.cpp.o: Hello.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Hello.dir/Hello.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello.dir/Hello.cpp.o -c /home/gabridc/Repositorio/solana/c_rpc/Hello.cpp

CMakeFiles/Hello.dir/Hello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello.dir/Hello.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/Hello.cpp > CMakeFiles/Hello.dir/Hello.cpp.i

CMakeFiles/Hello.dir/Hello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello.dir/Hello.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/Hello.cpp -o CMakeFiles/Hello.dir/Hello.cpp.s

CMakeFiles/Hello.dir/solanaRpc.cpp.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/solanaRpc.cpp.o: solanaRpc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Hello.dir/solanaRpc.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello.dir/solanaRpc.cpp.o -c /home/gabridc/Repositorio/solana/c_rpc/solanaRpc.cpp

CMakeFiles/Hello.dir/solanaRpc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello.dir/solanaRpc.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/solanaRpc.cpp > CMakeFiles/Hello.dir/solanaRpc.cpp.i

CMakeFiles/Hello.dir/solanaRpc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello.dir/solanaRpc.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/solanaRpc.cpp -o CMakeFiles/Hello.dir/solanaRpc.cpp.s

CMakeFiles/Hello.dir/qrc_qml.cpp.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/qrc_qml.cpp.o: qrc_qml.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Hello.dir/qrc_qml.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello.dir/qrc_qml.cpp.o -c /home/gabridc/Repositorio/solana/c_rpc/qrc_qml.cpp

CMakeFiles/Hello.dir/qrc_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello.dir/qrc_qml.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/qrc_qml.cpp > CMakeFiles/Hello.dir/qrc_qml.cpp.i

CMakeFiles/Hello.dir/qrc_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello.dir/qrc_qml.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/qrc_qml.cpp -o CMakeFiles/Hello.dir/qrc_qml.cpp.s

# Object files for target Hello
Hello_OBJECTS = \
"CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/Hello.dir/main.cpp.o" \
"CMakeFiles/Hello.dir/Hello.cpp.o" \
"CMakeFiles/Hello.dir/solanaRpc.cpp.o" \
"CMakeFiles/Hello.dir/qrc_qml.cpp.o"

# External object files for target Hello
Hello_EXTERNAL_OBJECTS =

Hello: CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.o
Hello: CMakeFiles/Hello.dir/main.cpp.o
Hello: CMakeFiles/Hello.dir/Hello.cpp.o
Hello: CMakeFiles/Hello.dir/solanaRpc.cpp.o
Hello: CMakeFiles/Hello.dir/qrc_qml.cpp.o
Hello: CMakeFiles/Hello.dir/build.make
Hello: /home/gabridc/Qt/5.15.2/gcc_64/lib/libQt5Quick.so.5.15.2
Hello: /home/gabridc/Qt/5.15.2/gcc_64/lib/libQt5Widgets.so.5.15.2
Hello: /home/gabridc/Qt/5.15.2/gcc_64/lib/libQt5QmlModels.so.5.15.2
Hello: /home/gabridc/Qt/5.15.2/gcc_64/lib/libQt5Qml.so.5.15.2
Hello: /home/gabridc/Qt/5.15.2/gcc_64/lib/libQt5Network.so.5.15.2
Hello: /home/gabridc/Qt/5.15.2/gcc_64/lib/libQt5Gui.so.5.15.2
Hello: /home/gabridc/Qt/5.15.2/gcc_64/lib/libQt5Core.so.5.15.2
Hello: CMakeFiles/Hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable Hello"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Hello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Hello.dir/build: Hello

.PHONY : CMakeFiles/Hello.dir/build

CMakeFiles/Hello.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Hello.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Hello.dir/clean

CMakeFiles/Hello.dir/depend: qrc_qml.cpp
	cd /home/gabridc/Repositorio/solana/c_rpc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gabridc/Repositorio/solana/c_rpc /home/gabridc/Repositorio/solana/c_rpc /home/gabridc/Repositorio/solana/c_rpc /home/gabridc/Repositorio/solana/c_rpc /home/gabridc/Repositorio/solana/c_rpc/CMakeFiles/Hello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Hello.dir/depend
