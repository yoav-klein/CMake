

cmake_minimum_required(VERSION 3.15)

project(Math)

add_subdirectory(libmath)
add_subdirectory(calculator)

get_target_property(CALC_INC_DIR calculator INCLUDE_DIRECTORIES)
get_target_property(CALC_INC_DIR_INTERFACE calculator INTERFACE_INCLUDE_DIRECTORIES)

message("From top-level CMakeLists.txt: Calculator INCLUDE_DIRECTORIES: ${CALC_INC_DIR}") 
message("From top-level CMakeLists.txt: Calculator INTERFACE_INCLUDE_DIRECTORIES: ${CALC_INC_DIR_INTERFACE}") 
