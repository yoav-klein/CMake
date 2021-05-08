
cmake_minimum_required(VERSION 3.15)

add_library(Math src/math.cpp)

target_include_directories(Math PUBLIC include)

get_target_property(MATH_INC_DIR Math INCLUDE_DIRECTORIES)
get_target_property(MATH_INC_DIR_INTERFACE Math INTERFACE_INCLUDE_DIRECTORIES)

message("Libmath INCLUDE_DIRECTORIES: ${MATH_INC_DIR}") 
message("Libmath INCLUDE_DIRECTORIES INTERFACE: ${MATH_INC_DIR_INTERFACE}") 
