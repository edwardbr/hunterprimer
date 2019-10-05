cmake_minimum_required(VERSION 3.13)

set(CMAKE_VERBOSE_MAKEFILE ON)
list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)

include(HunterGate)

message(STATUS "[project] CMAKE_TOOLCHAIN_FILE: ${CMAKE_TOOLCHAIN_FILE}")

option(HUNTER_STATUS_DEBUG "Hunter debug info" OFF)
#option(HUNTER_CONFIGURATION_TYPES "Hunter HUNTER_CONFIGURATION_TYPES" Debug)
HunterGate(
    URL "https://github.com/ruslo/hunter/archive/v0.23.214.tar.gz"
    SHA1 "e14bc153a7f16d6a5eeec845fb0283c8fad8c358"
    LOCAL
)

set(HUNTER_KEEP_PACKAGE_SOURCES ON)

project(HunterPrimer)

include(CTest)
include(${CMAKE_SOURCE_DIR}/cmake/clang_tools.cmake)

if(NOT ANDROID)
    set(ANDROID_STL " ")
    set(ANDROID_ABI " ")
    set(ANDROID_PLATFORM " ")
endif()

message("Qt5")

if(EXISTS ${QT_CMAKE})
set(Qt5Core_DIR "${QT_CMAKE}/Qt5Core")
set(Qt5Gui_DIR "${QT_CMAKE}/Qt5Gui")
set(Qt5_DIR "${QT_CMAKE}/Qt5")
set(Qt5Network_DIR "${QT_CMAKE}/Qt5Network")
set(Qt5Qml_DIR "${QT_CMAKE}/Qt5Qml")
set(Qt5Quick_DIR "${QT_CMAKE}/Qt5Quick")
set(Qt5Widgets_DIR "${QT_CMAKE}/Qt5Widgets")
                                                                                                                                                                                                                                                                                                                                          set(Qt5Multimedia_DIR "${QT_CMAKE}/Qt5Multimedia")
set(Qt5QuickCompiler_DIR "${QT_CMAKE}/Qt5QuickCompiler")
set(Qt5LinguistTools_DIR "${QT_CMAKE}/Qt5LinguistTools")

find_package(Qt5 COMPONENTS Core Gui Quick Multimedia Widgets LinguistTools REQUIRED)
if(NOT ANDROID AND NOT APPLE)
  set(Qt5DBus_DIR "${QT_CMAKE}/Qt5DBus")
  set(Qt5WebEngine_DIR "${QT_CMAKE}/Qt5WebEngine")
  find_package(Qt5 COMPONENTS WebEngine DBus REQUIRED)
endif()

else()

hunter_add_package(Qt)
hunter_add_package(Qt COMPONENTS qtmultimedia)
hunter_add_package(Qt COMPONENTS qtdeclarative)

find_package(Qt5Core REQUIRED)
find_package(Qt5Gui REQUIRED)
find_package(Qt5Widgets REQUIRED)
find_package(Qt5Quick REQUIRED)
find_package(Qt5Multimedia REQUIRED)

endif()

if(ANDROID OR APPLE)
set(QUICK_COMPILER false)
else()
set(QUICK_COMPILER true)
find_package(Qt5QuickCompiler)
endif()


set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_VERBOSE_MAKEFILE OFF)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
option(CODE_COVERAGE "Enable coverage reporting" OFF)


if(MSVC)
  add_compile_options("/W4 /WX")
else()
  add_compile_options("-W")
  add_compile_options("-Wall")
  add_compile_options("-pedantic")
  add_compile_options("-Wno-pragma-once-outside-header")
  add_compile_options("-Wno-unused-parameter")
  add_compile_options("-Wno-c++98-c++11-c++14-compat")
endif()

hunter_add_package(beast_machine)
find_package(beast_machine CONFIG REQUIRED)

hunter_add_package(logfault)  
find_package(logfault REQUIRED) 

hunter_add_package(bigint)  
find_package(bigint REQUIRED) 

hunter_add_package(zxing)  
find_package(zxing REQUIRED) 

hunter_add_package(qzxing)  
find_package(qzxing REQUIRED)

hunter_add_package(ZLIB)
find_package(ZLIB CONFIG REQUIRED)

#hunter_add_package(ICU)
#find_package(ICU CONFIG REQUIRED) 

hunter_add_package(ZeroMQ)
find_package(ZeroMQ CONFIG REQUIRED)

hunter_add_package(Boost COMPONENTS atomic
    chrono
    date_time
    filesystem
    iostreams
    log
    program_options
    regex
    system
    thread
    test)

find_package(Boost CONFIG REQUIRED 
    atomic
    chrono
    date_time
    filesystem
    iostreams
    log_setup
    log
    program_options
    regex
    system
    thread
    unit_test_framework)

hunter_add_package(OpenSSL)
find_package(OpenSSL REQUIRED)

hunter_add_package(date)
find_package(date CONFIG REQUIRED)

hunter_add_package(Sqlpp11)
find_package(Sqlpp11 CONFIG REQUIRED)

hunter_add_package(sqlcipher)
find_package(sqlcipher CONFIG REQUIRED)

hunter_add_package(sqlpp11-connector-sqlite3)
find_package(sqlpp11-connector-sqlite3 CONFIG REQUIRED)

hunter_add_package(libsodium)
find_package(libsodium CONFIG REQUIRED)

hunter_add_package(nlohmann_json)
find_package(nlohmann_json CONFIG REQUIRED)

hunter_add_package(nlohmann_fifo_map)
find_package(nlohmann_fifo_map CONFIG REQUIRED)

if(NOT APPLE AND NOT ANDROID)
  hunter_add_package(flatbuffers)
  find_package(Flatbuffers CONFIG REQUIRED)
  set(FLATBUFFERS_FLATC_EXECUTABLE ${FLATBUFFERS_ROOT}/bin/flatc)
  include(BuildFlatBuffers)
endif()

hunter_add_package(fmt)
find_package(fmt CONFIG REQUIRED)

hunter_add_package(cxxopts)
find_package(cxxopts CONFIG REQUIRED)

hunter_add_package(Catch2)
find_package(Catch2 CONFIG REQUIRED)

hunter_add_package(secp256k1)
find_package(secp256k1 CONFIG REQUIRED)

hunter_add_package(libbitcoin-system)
find_package(libbitcoin-system CONFIG REQUIRED)

#hunter_add_package(OpenCV)
#find_package(OpenCV REQUIRED)

if(NOT ANDROID)
  hunter_add_package(Qt5Keychain)
  find_package(Qt5Keychain CONFIG REQUIRED)
endif()

