# This file sets up a CMakeCache for Apple-style bootstrap builds. It can be
# used on any Darwin system to approximate Apple Clang builds.

if($ENV{DT_TOOLCHAIN_DIR})
  set(CMAKE_INSTALL_PREFIX $ENV{DT_TOOLCHAIN_DIR}/usr/)
else()
  set(CMAKE_INSTALL_PREFIX /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.toolchain/usr/)
endif()

set(LLVM_TARGETS_TO_BUILD X86 CACHE STRING "")
set(CLANG_VENDOR Apple CACHE STRING "")
set(LLVM_INCLUDE_TESTS OFF CACHE BOOL "")
set(LLVM_INCLUDE_EXAMPLES OFF CACHE BOOL "")
set(LLVM_INCLUDE_UTILS OFF CACHE BOOL "")
set(LLVM_INCLUDE_DOCS OFF CACHE BOOL "")
set(CLANG_INCLUDE_TESTS OFF CACHE BOOL "")
set(COMPILER_RT_INCLUDE_TESTS OFF CACHE BOOL "")
set(COMPILER_RT_BUILD_SANITIZERS OFF CACHE BOOL "")

set(CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING "")
set(PACKAGE_VERSION 7.1.0 CACHE STRING "")

# LIBCXX Settings
set(LIBCXX_INSTALL_LIBRARY OFF CACHE BOOL "")
set(LIBCXX_INSTALL_HEADERS ON CACHE BOOL "")
set(LIBCXX_OVERRIDE_DARWIN_INSTALL ON CACHE BOOL "")

#bootstrap
set(CLANG_ENABLE_BOOTSTRAP ON CACHE BOOL "")
set(CLANG_BOOTSTRAP_CMAKE_ARGS
  -C ${CMAKE_CURRENT_LIST_DIR}/Apple-stage2.cmake
  CACHE STRING "")
