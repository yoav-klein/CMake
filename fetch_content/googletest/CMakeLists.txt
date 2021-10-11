
project(UseGTest)

cmake_minimum_required(VERSION 3.16)

include(FetchContent)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG        703bd9caab50b139428cea1aaff9974ebee5742e # release-1.10.0
)

FetchContent_GetProperties(googletest)
if(NOT googletest_POPULATED)
	FetchContent_Populate(googletest)
	message("googletest_SOURCE_DIR: ${googletest_SOURCE_DIR}")
	message("googletest_BINARY_DIR: ${googletest_BINARY_DIR}")
	add_subdirectory(${googletest_SOURCE_DIR})
endif()





