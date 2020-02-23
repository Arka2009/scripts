# Compiling the latest releases
Currently the following options are used. For more details visit the main repository [llvm-project/](https://github.com/llvm/llvm-project) and 
[llvm-project/openmp](https://github.com/llvm/llvm-project/tree/master/openmp). Also remember to compile with latest gcc/g++. Intel compilers often fail to build the entire project.
## Configuration for clang+openMP+others
```
cwd=${PWD}
cd llvm-project && mkdir -p build && cd build
cmake -G "Unix Makefiles" -DLLVM_ENABLE_PROJECTS="clang;openmp" -DCMAKE_INSTALL_PREFIX="/home/amaity/Desktop/ClangLLVMRoot/install" -DPYTHON_EXECUTABLE=$(which python3) -DLIBOMP_OPMT_SUPPORT=on -DLIBOMP_USE_DEBUGGER=on -DCMAKE_BUILD_TYPE=RelWithDebInfo -DLLVM_ENABLE_CXX1Y=ON -DLLVM_BINUTILS_INCDIR=/home/amaity/Desktop/ClangLLVMRoot/binutils/include ../llvm
cd ${cwd}
```
 It is too expensive to build and run the entire project.
 // Other project enables. ```clang-tools-extra;libcxx;libcxxabi;libunwind;compiler-rt;polly;debuginfo-tests;```
```-DLLVM_BINUTILS_INCDIR``` is useful for LLVM gold plugin.

## Configuration for only openmp (Preferrable)
```
cd llvm-project
mkdir openmp-build && cd openmp-build
cmake ../openmp -DLLVM_ENABLE_PROJECTS=openmp -DLIBOMP_OMPT_SUPPORT=ON -DCMAKE_INSTALL_PREFIX="/home/amaity/Desktop/ClangLLVMRoot/install" -DCMAKE_BUILD_TYPE=Debug
```
This is usually preferably if you want to build openMP alone. Also certain options like -DLIBOMP_STATS=ON during configuration generation can throw compilation errors. (Maybe raise an issue)

## Configuration for release 3.8 (required by tools like Contech)
```
cd <path/llvm/sources>
mkdir -p build && cd build
cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX="/home/amaity/Desktop/ClangLLVMRoot/install-3.8.0" -DCMAKE_BUILD_TYPE=RelWithDebInfo -DLLVM_ENABLE_CXX1Y=ON -DLLVM_BINUTILS_INCDIR=/home/amaity/Desktop/ClangLLVMRoot/binutils/include ..
```
New versions of LLVM API often breaks tools like Contech which are not updated on a regular basis.

## Adding callbacks for openmp Tools interface ?
1. If you add openMP Tool interface callbacks check [openMPT Examples](https://github.com/llvm-mirror/openmp/blob/master/runtime/test/ompt/callback.h)
2. If you want to visualize the openMP RTL enable KMP_A_DEBUG messages by setting the appropriate environment variable.
