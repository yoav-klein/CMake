
project(MyMath)
cmake_minimum_required(VERSION 3.15)

add_library(MyMath src/mymath.cpp)

target_include_directories(MyMath PRIVATE include)

## Installs the outputs of the target MyMath to those locations
# using the EXPORT option associates the given targets (in this case MyMath) with the 
# export set MyMathExports
install(TARGETS MyMath EXPORT MyMathExports
	LIBRARY DESTINATION lib
	ARCHIVE DESTINATION lib
	RUNTIME DESTINATION bin
	# this will populate the INTERFACE_INCLUDE_DIRECTORIES
	# of the IMPORTED target created in the import file
	INCLUDES DIRECTORIES include/mymath
)

# this will create the "import file"
install(EXPORT 
	MyMathExports
	# NAMESPACE prepends the <namespace> to all the targets
	# imported with this export set
	NAMESPACE MyMath::
	DESTINATION ${CMAKE_SOURCE_DIR}/../targets
	# setting the name of the import file
	FILE MyMathTargets.cmake
)

# Installs the mymath.h file to `include`
install(FILES
	include/mymath.h
	DESTINATION include/mymath
)
