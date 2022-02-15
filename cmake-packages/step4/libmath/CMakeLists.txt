
project(MyMath)
cmake_minimum_required(VERSION 3.15)

set(MyMath_VERSION 1.2)


add_library(MyMath src/mymath.cpp)
target_include_directories(MyMath PRIVATE include)

## Installs the outputs of the target MyMath to those locations
# using the EXPORT option associates the given targets (in this case MyMath) with the 
# export set MyMathExports
install(TARGETS MyMath
	EXPORT MyMathExports
	LIBRARY DESTINATION lib/$<CONFIG>
	ARCHIVE DESTINATION lib/$<CONFIG>
	RUNTIME DESTINATION bin
	# this will populate the INTERFACE_INCLUDE_DIRECTORIES
	# of the IMPORTED target created in the import file
	INCLUDES DIRECTORIES include/mymath
)

# this will create the "import file"
install(EXPORT MyMathExports
	# NAMESPACE prepends the <namespace> to all the targets
	# imported with this export set
	NAMESPACE MyMath::
	DESTINATION lib/cmake/MyMath
	# setting the name of the import file
	FILE MyMathTargets.cmake
)

# CMakePackageConfigHelpers contains a helper function to create 
# a simple version file
include(CMakePackageConfigHelpers)

write_basic_package_version_file("MyMathConfigVersion.cmake"
	VERSION ${MyMath_VERSION}
	COMPATIBILITY SameMajorVersion	
)

install(FILES
	"MyMathConfig.cmake" "${CMAKE_CURRENT_BINARY_DIR}/MyMathConfigVersion.cmake"
	DESTINATION lib/cmake/MyMath
)

# Installs the mymath.h file to `include`
install(FILES
	include/mymath.h
	DESTINATION include/mymath
)
