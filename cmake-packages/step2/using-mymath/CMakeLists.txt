
project(UsingMyMath)
cmake_minimum_required(VERSION 3.15)

include(${CMAKE_SOURCE_DIR/../targets/}MyMathTargets.cmake)

add_executable(test test.cpp)

target_link_libraries(test PRIVATE MyMath::MyMath)

