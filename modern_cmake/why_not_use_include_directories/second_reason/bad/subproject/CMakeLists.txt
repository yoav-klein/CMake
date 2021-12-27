
cmake_minimum_required(VERSION 3.15)

add_executable(subproject main.cpp)

target_include_directories(subproject PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

set_target_properties(subproject PROPERTIES
	RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin
)
