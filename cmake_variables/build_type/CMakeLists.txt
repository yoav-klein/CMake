
project(MyProject)

cmake_minimum_required(VERSION 3.16)


add_executable(App main.cpp)

message(${CMAKE_BUILD_TYPE})
if(${CMAKE_CXX_FLAGS})
	message(${CMAKE_CXX_FLAGS})
else()
	message("CMAKE_CXX_FLAGS is not set")
endif()

if(${CMAKE_CXX_FLAGS_DEBUG})
	message(${CMAKE_CXX_FLAGS_DEBUG})
endif()


if(${CMAKE_CXX_FLAGS_RELEASE})
	message(${CMAKE_CXX_FLAGS_RELEASE})
endif()

