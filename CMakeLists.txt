cmake_minimum_required(VERSION 3.10.0)
project(FDFramework VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -Wall -Wextra")

set(THIRDPARTY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty
    CACHE PATH "path to thirdparty libraries")

set(THIRDPARTY_BOOST_DIR ${THIRDPARTY_DIR}/boost
    CACHE PATH "path to boost root directory")

set(BOOST_ROOT ${THIRDPARTY_BOOST_DIR})
set(BOOST_INCLUDE_DIR ${BOOST_ROOT})
set(BOOST_LIBRARYDIR ${BOOST_ROOT}/stage)

set(THIRDPARTY_GTEST_DIR ${THIRDPARTY_DIR}/googletest CACHE PATH
    "path to googletest root directory")

set(THIRDPARTY_GTEST_ROOT ${GTEST_DIR})


option(BUILD_FDCORE "Enable build FDCore" ON)
if(BUILD_FDCORE)
    add_subdirectory(FDCore)
endif()

#add_library(FDFramework FDFramework.cpp)

#set(CPACK_PROJECT_NAME ${PROJECT_NAME})
#set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
#include(CPack)
