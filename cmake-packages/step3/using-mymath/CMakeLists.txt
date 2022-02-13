
project(UsingMyMath)
cmake_minimum_required(VERSION 3.15)

find_package(MyMath 1.0 REQUIRED)

message("MyMath_FOUND: ${MyMath_FOUND}")
message("MyMath_VERSION: ${MyMath_VERSION}")

add_executable(test test.cpp)

target_link_libraries(test PRIVATE MyMath::MyMath)

