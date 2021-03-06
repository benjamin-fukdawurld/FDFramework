cmake_minimum_required(VERSION 3.10.0)
project(FDFramework VERSION 0.1.0)

if (POLICY CMP0074)
  cmake_policy(SET CMP0074 NEW)
endif()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -Wall -Wextra")

set(THIRDPARTY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty
    CACHE PATH "path to thirdparty libraries")

set(THIRDPARTY_BOOST_DIR ${THIRDPARTY_DIR}/install
    CACHE PATH "path to boost root directory")

set(BOOST_ROOT ${THIRDPARTY_BOOST_DIR})
set(BOOST_INCLUDE_DIR ${BOOST_ROOT})
set(BOOST_LIBRARYDIR ${BOOST_ROOT}/stage)

set(THIRDPARTY_GTEST_DIR ${THIRDPARTY_DIR}/install
 CACHE PATH "path to googletest root directory")

set(GTEST_ROOT ${THIRDPARTY_GTEST_DIR})
set(GTest_ROOT ${GTEST_ROOT})
set(GTest_INCLUDE_DIR ${GTest_ROOT}/include)
set(GTest_LIBRARIES ${GTest_ROOT}/lib)

option(BUILD_TESTS "Enable build tests" ON)
option(BUILD_FDCORE "Enable build FDCore" ON)
option(BUILD_FDENGINE "Enable build FDEngine" ON)

if(BUILD_TESTS)
    enable_testing()
    if(NOT GTEST_FOUND)
        find_package(GTest REQUIRED COMPONENTS gtest gmock)
        set(THREADS_PREFER_PTHREAD_FLAG ON)
        find_package(Threads REQUIRED)
    endif()

    if(BUILD_FDCORE)
        option(FDCORE_BUILD_TESTS "Build FDCore tests" ${BUILD_TESTS})
        add_subdirectory(FDCore)
    endif()
    if(BUILD_FDENGINE)
        option(FDENGINE_BUILD_TESTS "Build FDEngine tests" ${BUILD_TESTS})
        add_subdirectory(FDEngine)
    endif()
endif()
