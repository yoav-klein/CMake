
cmake_minimum_required(VERSION 3.15)

add_library(MyMath src/mymath.cpp)

target_include_directories(MyMath INTERFACE include)

get_target_property(MYMATH_INC_DIR MyMath INCLUDE_DIRECTORIES)
get_target_property(MYMATH_INC_DIR_INTERFACE MyMath INTERFACE_INCLUDE_DIRECTORIES)

message("Libmath INCLUDE_DIRECTORIES: ${MYMATH_INC_DIR}") 
message("Libmath INCLUDE_DIRECTORIES INTERFACE: ${MYMATH_INC_DIR_INTERFACE}") 
