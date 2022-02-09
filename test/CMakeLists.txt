
project(Kuku)

cmake_minimum_required(VERSION 3.15)

message(${CMAKE_CXX_COMPILE_FEATURES})

add_executable(myapp main.cpp)

target_compile_features(myapp PUBLIC cxx_std_11)
