
project(MyMath)
cmake_minimum_required(VERSION 3.15)

add_library(MyMath src/mymath.cpp)

target_include_directories(MyMath PUBLIC include)

install(TARGETS MyMath
	LIBRARY DESTINATION lib
	ARCHIVE DESTINATION lib
	RUNTIME DESTINATION bin
	INCLUDES DESTINATION include
)

install(FILES
	include/mymath.h
	DESTINATION include
)
