
project(MyProject)

include(SubProject/CMakeLists.txt)
#add_subdirectory(SubProject)

cmake_minimum_required(VERSION 3.16)

add_executable(App main.cpp)
