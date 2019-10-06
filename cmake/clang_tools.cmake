# This file defines custom targets and options to support running
# or enabling Clang tooling.

option(ADDRESS_SANITIZER "Enable Clang AddressSanitizer" OFF)
if (ADDRESS_SANITIZER)
    message(STATUS "AddressSanitizer enabled")
    set(CMAKE_CXX_FLAGS_DEBUG
        "${CMAKE_CXX_FLAGS_DEBUG} -O1 -fno-omit-frame-pointer -fsanitize=address")
endif ()

option(UNDEFINED_SANITIZER "Enable Clang UndefinedBehaviorSanitizer" OFF)
if (UNDEFINED_SANITIZER)
    message(STATUS "UndefinedBehaviorSanitizer enabled")
    set(CMAKE_CXX_FLAGS_DEBUG
        "${CMAKE_CXX_FLAGS_DEBUG} -fsanitize=undefined -fsanitize=integer")
endif ()

option(CLANG_CODE_COVERAGE "Enable code coverage metrics in Clang" OFF)
if (CLANG_CODE_COVERAGE)
    message(STATUS "Code coverage metrics enabled")
    set(CMAKE_CXX_FLAGS_DEBUG
        "${CMAKE_CXX_FLAGS_DEBUG} -fprofile-instr-generate -fcoverage-mapping")
endif ()

option(ENABLE_CLANG_TIDY "Enable code clang-tidy" OFF)
if (ENABLE_CLANG_TIDY)

    message(STATUS "clang-tidy enabled")
    find_program(CLANG_TIDY_EXE NAMES clang-tidy clang-tidy-6.0 PATHS /usr/local/clang_8.0.0/bin)
    if(NOT CLANG_TIDY_EXE)
        message(STATUS "clang-tidy not found.")
    else()
        message(STATUS "clang-tidy found: ${CLANG_TIDY_EXE}")
        set(DO_CLANG_TIDY "${CLANG_TIDY_EXE}" "-checks=" )
    endif()

endif ()

option(ENABLE_CLANG_FORMAT "Enable clang-format" OFF)
if (ENABLE_CLANG_FORMAT)

    find_program(CLANG_FORMAT_EXE NAMES clang-format clang-format-6.0 PATHS /usr/local/clang_8.0.0/bin)
    if(NOT CLANG_FORMAT_EXE)
        message(STATUS "clang-format not found.")
    else()
        message(STATUS "clang-format found: ${CLANG_FORMAT_EXE}")
    endif ()

endif ()
