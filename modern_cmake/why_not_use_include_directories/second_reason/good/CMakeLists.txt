
cmake_minimum_required(VERSION 3.15)

project(MyApp)

add_subdirectory(subproject)

add_executable(myapp main.cpp)
target_include_directories(myapp PRIVATE include)

#target_link_libraries(myapp PRIVATE foo)

set_target_properties(myapp PROPERTIES
	RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/myapp_bin
)
