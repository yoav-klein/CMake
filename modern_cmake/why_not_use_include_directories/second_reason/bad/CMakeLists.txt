
cmake_minimum_required(VERSION 3.15)

project(MyApp)

include_directories(myapp include)

add_subdirectory(libfoo)

add_executable(myapp main.cpp)

target_link_libraries(myapp PRIVATE foo)

set_target_properties(myapp PROPERTIES
	RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/myapp_bin
#	LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/myapp_lib
)
