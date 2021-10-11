
project(Calculator)

cmake_minimum_required(VERSION 3.15)

include(FetchContent)

FetchContent_Declare(MyMath
	URL /home/yoav/cmake/math/libmath
)

FetchContent_GetProperties(MyMath)

if(NOT MyMath_POPULATED)
	FetchContent_Populate(MyMath)
	#message(${MyMath_POPULATED})
	#add_subdirectory(${MyMath_SOURCE_DIR} ${MyMath_BINARY_DIR})
	
endif()

#FetchContent_MakeAvailable(MyMath)


add_executable(${PROJECT_NAME} calculator.cpp)

target_link_libraries(${PROJECT_NAME})



