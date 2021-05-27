cmake_minimum_required(VERSION 3.0.0)
project(xme VERSION 0.1.0)

include(CTest)
enable_testing()

add_library(xme ./XME/src/main.cpp)
add_executable(final ./Sandbox/src/application.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
