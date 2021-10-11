
project(Calculator)

cmake_minimum_required(VERSION 3.15)

include(FetchContent)

FetchContent_Declare(MyMath
	URL /home/yoav/cmake/math/libmath
)

FetchContent_GetProperties(MyMath)

if(NOT MyMath_POPULATED)
	FetchContent_Populate(MyMath)
	message(${mymath_SOURCE_DIR})
	add_subdirectory(${mymath_SOURCE_DIR} ${mymath_BINARY_DIR})
	
endif()

### The simpler way to do it:
# FetchContent_MakeAvailable(MyMath)


add_executable(${PROJECT_NAME} calculator.cpp)

target_link_libraries(${PROJECT_NAME} MyMath)



