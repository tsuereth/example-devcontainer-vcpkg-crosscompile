if(NOT _ARM64_LINUX_MUSL_TOOLCHAIN)
    set(_ARM64_LINUX_MUSL_TOOLCHAIN 1)

    include("$ENV{VCPKG_ROOT}/scripts/toolchains/linux.cmake")

    if(DEFINED ENV{AARCH64_LINUX_MUSL_CROSS_PREFIX})
        set(CMAKE_C_COMPILER "$ENV{AARCH64_LINUX_MUSL_CROSS_PREFIX}/bin/aarch64-linux-musl-gcc")
        message(STATUS "Overriding CMAKE_C_COMPILER=${CMAKE_C_COMPILER}")
        set(CMAKE_CXX_COMPILER "$ENV{AARCH64_LINUX_MUSL_CROSS_PREFIX}/bin/aarch64-linux-musl-g++")
        message(STATUS "Overriding CMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}")
    else()
        message(FATAL_ERROR "Missing required ENV definition AARCH64_LINUX_MUSL_CROSS_PREFIX")
    endif()
endif()
