cmake_minimum_required(VERSION 3.12.0)

project(xme)

file(GLOB_RECURSE INCLUDE_FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.hpp
)

file(GLOB_RECURSE SOURCE_FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp
)

add_library(${PROJECT_NAME} ${SOURCE_FILES})