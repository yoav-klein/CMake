
cmake_minimum_required(VERSION 3.15)
project(TwoExecutables)

add_executable(Hello1 main.cpp)
add_executable(Hello2 main.cpp)

target_sources(Hello1 PUBLIC ver1.cpp)
target_sources(Hello2 PUBLIC ver2.cpp)


