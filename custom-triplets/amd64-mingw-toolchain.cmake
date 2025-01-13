if(NOT _AMD64_MINGW_TOOLCHAIN)
    set(_AMD64_MINGW_TOOLCHAIN 1)

    include("$ENV{VCPKG_ROOT}/scripts/toolchains/mingw.cmake")

    find_program(CMAKE_C_COMPILER "x86_64-w64-mingw32-gcc-posix")
    message(STATUS "Overriding CMAKE_C_COMPILER=${CMAKE_C_COMPILER}")
    find_program(CMAKE_CXX_COMPILER "x86_64-w64-mingw32-g++-posix")
    message(STATUS "Overriding CMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}")

    set(CMAKE_BUILD_WITH_INSTALL_RPATH true)
    message(STATUS "Overriding CMAKE_BUILD_WITH_INSTALL_RPATH=${CMAKE_BUILD_WITH_INSTALL_RPATH}")
endif()
