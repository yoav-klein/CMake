

cmake_minimum_required(VERSION 3.15)

include(FetchContent)

FetchContent_Declare(MyMath
	URL /home/yoav/playground/cmake/math/libmath
)

FetchContent_MakeAvailable(MyMath)

add_executable(calculator calculator.cpp)

target_link_libraries(calculator MyMath)


