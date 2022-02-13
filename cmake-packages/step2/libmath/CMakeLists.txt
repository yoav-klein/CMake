
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
)

# this will create the "import file"
install(EXPORT 
	MyMathExports
	NAMESPACE MyMath::
	DESTINATION /home/yoav/test_install
	# setting the name of the import file
	FILE MyMathTargets.cmake
)

# Installs the mymath.h file to `include`
install(FILES
	include/mymath.h
	DESTINATION include
)
