
cmake_minimum_required(VERSION 3.10)

project(FOO)

# Notice that project name here is FOO, even if there's a higher level call to project with a different name
message(${PROJECT_NAME})

#set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ../artifacts)
add_executable(foo main.cpp)
