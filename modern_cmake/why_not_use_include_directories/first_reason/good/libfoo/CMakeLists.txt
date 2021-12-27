
cmake_minimum_required(VERSION 3.15)

add_library(foo SHARED foo.cpp)
target_include_directories(foo PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

set_target_properties(foo PROPERTIES
	LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/lib
)
