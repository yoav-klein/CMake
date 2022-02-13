
project(MyMath)
cmake_minimum_required(VERSION 3.15)

add_library(MyMath src/mymath.cpp)

#
# You can set the CMAKE_INSTALL_PREFIX here to set the root of all the installed files
#
#set(CMAKE_INSTALL_PREFIX ${CURRENT_LIST_BINARY_DIR}/test_install)

target_include_directories(MyMath PUBLIC include)

## Installs the outputs of the target MyMath to those locations
install(TARGETS MyMath
	LIBRARY DESTINATION lib
	ARCHIVE DESTINATION lib
	RUNTIME DESTINATION bin
)

# Installs the mymath.h file to `include`
install(FILES
	include/mymath.h
	DESTINATION include
)
