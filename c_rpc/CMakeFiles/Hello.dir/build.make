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

CMakeFiles/Hello.dir/Quicksort.cpp.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/Quicksort.cpp.o: Quicksort.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Hello.dir/Quicksort.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Hello.dir/Quicksort.cpp.o -c /home/gabridc/Repositorio/solana/c_rpc/Quicksort.cpp

CMakeFiles/Hello.dir/Quicksort.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hello.dir/Quicksort.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/Quicksort.cpp > CMakeFiles/Hello.dir/Quicksort.cpp.i

CMakeFiles/Hello.dir/Quicksort.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hello.dir/Quicksort.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/Quicksort.cpp -o CMakeFiles/Hello.dir/Quicksort.cpp.s

CMakeFiles/Hello.dir/ed25519/add_scalar.c.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/ed25519/add_scalar.c.o: ed25519/add_scalar.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/Hello.dir/ed25519/add_scalar.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Hello.dir/ed25519/add_scalar.c.o -c /home/gabridc/Repositorio/solana/c_rpc/ed25519/add_scalar.c

CMakeFiles/Hello.dir/ed25519/add_scalar.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Hello.dir/ed25519/add_scalar.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/ed25519/add_scalar.c > CMakeFiles/Hello.dir/ed25519/add_scalar.c.i

CMakeFiles/Hello.dir/ed25519/add_scalar.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Hello.dir/ed25519/add_scalar.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/ed25519/add_scalar.c -o CMakeFiles/Hello.dir/ed25519/add_scalar.c.s

CMakeFiles/Hello.dir/ed25519/fe.c.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/ed25519/fe.c.o: ed25519/fe.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/Hello.dir/ed25519/fe.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Hello.dir/ed25519/fe.c.o -c /home/gabridc/Repositorio/solana/c_rpc/ed25519/fe.c

CMakeFiles/Hello.dir/ed25519/fe.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Hello.dir/ed25519/fe.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/ed25519/fe.c > CMakeFiles/Hello.dir/ed25519/fe.c.i

CMakeFiles/Hello.dir/ed25519/fe.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Hello.dir/ed25519/fe.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/ed25519/fe.c -o CMakeFiles/Hello.dir/ed25519/fe.c.s

CMakeFiles/Hello.dir/ed25519/ge.c.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/ed25519/ge.c.o: ed25519/ge.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/Hello.dir/ed25519/ge.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Hello.dir/ed25519/ge.c.o -c /home/gabridc/Repositorio/solana/c_rpc/ed25519/ge.c

CMakeFiles/Hello.dir/ed25519/ge.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Hello.dir/ed25519/ge.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/ed25519/ge.c > CMakeFiles/Hello.dir/ed25519/ge.c.i

CMakeFiles/Hello.dir/ed25519/ge.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Hello.dir/ed25519/ge.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/ed25519/ge.c -o CMakeFiles/Hello.dir/ed25519/ge.c.s

CMakeFiles/Hello.dir/ed25519/key_exchange.c.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/ed25519/key_exchange.c.o: ed25519/key_exchange.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/Hello.dir/ed25519/key_exchange.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Hello.dir/ed25519/key_exchange.c.o -c /home/gabridc/Repositorio/solana/c_rpc/ed25519/key_exchange.c

CMakeFiles/Hello.dir/ed25519/key_exchange.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Hello.dir/ed25519/key_exchange.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/ed25519/key_exchange.c > CMakeFiles/Hello.dir/ed25519/key_exchange.c.i

CMakeFiles/Hello.dir/ed25519/key_exchange.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Hello.dir/ed25519/key_exchange.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/ed25519/key_exchange.c -o CMakeFiles/Hello.dir/ed25519/key_exchange.c.s

CMakeFiles/Hello.dir/ed25519/keypair.c.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/ed25519/keypair.c.o: ed25519/keypair.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/Hello.dir/ed25519/keypair.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Hello.dir/ed25519/keypair.c.o -c /home/gabridc/Repositorio/solana/c_rpc/ed25519/keypair.c

CMakeFiles/Hello.dir/ed25519/keypair.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Hello.dir/ed25519/keypair.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/ed25519/keypair.c > CMakeFiles/Hello.dir/ed25519/keypair.c.i

CMakeFiles/Hello.dir/ed25519/keypair.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Hello.dir/ed25519/keypair.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/ed25519/keypair.c -o CMakeFiles/Hello.dir/ed25519/keypair.c.s

CMakeFiles/Hello.dir/ed25519/sc.c.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/ed25519/sc.c.o: ed25519/sc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/Hello.dir/ed25519/sc.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Hello.dir/ed25519/sc.c.o -c /home/gabridc/Repositorio/solana/c_rpc/ed25519/sc.c

CMakeFiles/Hello.dir/ed25519/sc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Hello.dir/ed25519/sc.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/ed25519/sc.c > CMakeFiles/Hello.dir/ed25519/sc.c.i

CMakeFiles/Hello.dir/ed25519/sc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Hello.dir/ed25519/sc.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/ed25519/sc.c -o CMakeFiles/Hello.dir/ed25519/sc.c.s

CMakeFiles/Hello.dir/ed25519/seed.c.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/ed25519/seed.c.o: ed25519/seed.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/Hello.dir/ed25519/seed.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Hello.dir/ed25519/seed.c.o -c /home/gabridc/Repositorio/solana/c_rpc/ed25519/seed.c

CMakeFiles/Hello.dir/ed25519/seed.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Hello.dir/ed25519/seed.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/ed25519/seed.c > CMakeFiles/Hello.dir/ed25519/seed.c.i

CMakeFiles/Hello.dir/ed25519/seed.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Hello.dir/ed25519/seed.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/ed25519/seed.c -o CMakeFiles/Hello.dir/ed25519/seed.c.s

CMakeFiles/Hello.dir/ed25519/sha512.c.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/ed25519/sha512.c.o: ed25519/sha512.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/Hello.dir/ed25519/sha512.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Hello.dir/ed25519/sha512.c.o -c /home/gabridc/Repositorio/solana/c_rpc/ed25519/sha512.c

CMakeFiles/Hello.dir/ed25519/sha512.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Hello.dir/ed25519/sha512.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/ed25519/sha512.c > CMakeFiles/Hello.dir/ed25519/sha512.c.i

CMakeFiles/Hello.dir/ed25519/sha512.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Hello.dir/ed25519/sha512.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/ed25519/sha512.c -o CMakeFiles/Hello.dir/ed25519/sha512.c.s

CMakeFiles/Hello.dir/ed25519/sign.c.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/ed25519/sign.c.o: ed25519/sign.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/Hello.dir/ed25519/sign.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Hello.dir/ed25519/sign.c.o -c /home/gabridc/Repositorio/solana/c_rpc/ed25519/sign.c

CMakeFiles/Hello.dir/ed25519/sign.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Hello.dir/ed25519/sign.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/ed25519/sign.c > CMakeFiles/Hello.dir/ed25519/sign.c.i

CMakeFiles/Hello.dir/ed25519/sign.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Hello.dir/ed25519/sign.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/ed25519/sign.c -o CMakeFiles/Hello.dir/ed25519/sign.c.s

CMakeFiles/Hello.dir/ed25519/verify.c.o: CMakeFiles/Hello.dir/flags.make
CMakeFiles/Hello.dir/ed25519/verify.c.o: ed25519/verify.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object CMakeFiles/Hello.dir/ed25519/verify.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Hello.dir/ed25519/verify.c.o -c /home/gabridc/Repositorio/solana/c_rpc/ed25519/verify.c

CMakeFiles/Hello.dir/ed25519/verify.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Hello.dir/ed25519/verify.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/gabridc/Repositorio/solana/c_rpc/ed25519/verify.c > CMakeFiles/Hello.dir/ed25519/verify.c.i

CMakeFiles/Hello.dir/ed25519/verify.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Hello.dir/ed25519/verify.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/gabridc/Repositorio/solana/c_rpc/ed25519/verify.c -o CMakeFiles/Hello.dir/ed25519/verify.c.s

# Object files for target Hello
Hello_OBJECTS = \
"CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/Hello.dir/main.cpp.o" \
"CMakeFiles/Hello.dir/Hello.cpp.o" \
"CMakeFiles/Hello.dir/solanaRpc.cpp.o" \
"CMakeFiles/Hello.dir/qrc_qml.cpp.o" \
"CMakeFiles/Hello.dir/Quicksort.cpp.o" \
"CMakeFiles/Hello.dir/ed25519/add_scalar.c.o" \
"CMakeFiles/Hello.dir/ed25519/fe.c.o" \
"CMakeFiles/Hello.dir/ed25519/ge.c.o" \
"CMakeFiles/Hello.dir/ed25519/key_exchange.c.o" \
"CMakeFiles/Hello.dir/ed25519/keypair.c.o" \
"CMakeFiles/Hello.dir/ed25519/sc.c.o" \
"CMakeFiles/Hello.dir/ed25519/seed.c.o" \
"CMakeFiles/Hello.dir/ed25519/sha512.c.o" \
"CMakeFiles/Hello.dir/ed25519/sign.c.o" \
"CMakeFiles/Hello.dir/ed25519/verify.c.o"

# External object files for target Hello
Hello_EXTERNAL_OBJECTS =

Hello: CMakeFiles/Hello.dir/Hello_autogen/mocs_compilation.cpp.o
Hello: CMakeFiles/Hello.dir/main.cpp.o
Hello: CMakeFiles/Hello.dir/Hello.cpp.o
Hello: CMakeFiles/Hello.dir/solanaRpc.cpp.o
Hello: CMakeFiles/Hello.dir/qrc_qml.cpp.o
Hello: CMakeFiles/Hello.dir/Quicksort.cpp.o
Hello: CMakeFiles/Hello.dir/ed25519/add_scalar.c.o
Hello: CMakeFiles/Hello.dir/ed25519/fe.c.o
Hello: CMakeFiles/Hello.dir/ed25519/ge.c.o
Hello: CMakeFiles/Hello.dir/ed25519/key_exchange.c.o
Hello: CMakeFiles/Hello.dir/ed25519/keypair.c.o
Hello: CMakeFiles/Hello.dir/ed25519/sc.c.o
Hello: CMakeFiles/Hello.dir/ed25519/seed.c.o
Hello: CMakeFiles/Hello.dir/ed25519/sha512.c.o
Hello: CMakeFiles/Hello.dir/ed25519/sign.c.o
Hello: CMakeFiles/Hello.dir/ed25519/verify.c.o
Hello: CMakeFiles/Hello.dir/build.make
Hello: /home/gabridc/Qt/5.15.2/gcc_64/lib/libQt5Quick.so.5.15.2
Hello: /home/gabridc/Qt/5.15.2/gcc_64/lib/libQt5Widgets.so.5.15.2
Hello: /home/gabridc/Qt/5.15.2/gcc_64/lib/libQt5QmlModels.so.5.15.2
Hello: /home/gabridc/Qt/5.15.2/gcc_64/lib/libQt5Qml.so.5.15.2
Hello: /home/gabridc/Qt/5.15.2/gcc_64/lib/libQt5Network.so.5.15.2
Hello: /home/gabridc/Qt/5.15.2/gcc_64/lib/libQt5Gui.so.5.15.2
Hello: /home/gabridc/Qt/5.15.2/gcc_64/lib/libQt5Core.so.5.15.2
Hello: CMakeFiles/Hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gabridc/Repositorio/solana/c_rpc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Linking CXX executable Hello"
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

