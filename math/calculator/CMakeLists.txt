

cmake_minimum_required(VERSION 3.15)

add_executable(calculator calculator.cpp)

target_link_libraries(calculator MyMath)

get_target_property(CALCULATOR_INC_DIR calculator INCLUDE_DIRECTORIES)
get_target_property(CALCULATOR_INC_DIR_INTERFACE calculator INTERFACE_INCLUDE_DIRECTORIES)

message("Calculator INCLUDE_DIRECTORIES: ${CALCULATOR_INC_DIR}") 
message("Calculator INCLUDE_DIRECTORIES INTERFACE: ${CALCULATOR_INC_DIR_INTERFACE}") 
