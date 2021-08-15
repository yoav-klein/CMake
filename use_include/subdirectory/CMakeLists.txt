
cmake_minimum_required(VERSION 3.10)

message("From sub directory CMAKE_SOURCE_DIR: ${CMAKE_SOURCE_DIR}")
message("From sub directory CMAKE_CURRENT_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}")

include(../another_dir/CMakeLists.txt)

#add_subdirectory(../)

#include(../CMakeLists.txt)
