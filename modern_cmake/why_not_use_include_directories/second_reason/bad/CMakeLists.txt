
cmake_minimum_required(VERSION 3.15)

project(MyApp)

include_directories(include)
add_subdirectory(subproject)

add_executable(myapp main.cpp)

set_target_properties(myapp PROPERTIES
	RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/myapp_bin
)
