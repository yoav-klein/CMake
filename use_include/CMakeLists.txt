
cmake_minimum_required(VERSION 3.10)

project(UseInclude)

message("From parent CMAKE_SOURCE_DIR: ${CMAKE_SOURCE_DIR}")
message("From parent CMAKE_CURRENT_SOURCE_DIR: ${CMAKE_CURRENT_SOURCE_DIR}")

add_subdirectory(subdirectory)
