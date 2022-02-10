


cmake_minimum_required(VERSION 3.15)
project(FooPackage VERSION 1.2)

add_library(Foo foo.cpp)
target_include_directories(Foo PUBLIC ${CMAKE_BUILD_DIR})

# this part installs the products each to its place
# in addition, it creates a EXPORT set
install(TARGETS Foo EXPORT FooTargets
	LIBRARY DESTINATION lib
	ARCHIVE DESTINATION lib
	RUNTIME DESTINATION bin
	INCLUDES DESTINATION include
)

# this creates the /usr/local/lib/cmake/Foo/FooTargets.cmake file
install(EXPORT FooTargets
	FILE FooTargets.cmake
	NAMESPACE Foo::
	DESTINATION lib/cmake/Foo
)

# this creates a FooConfigVersion.cmake file
include(CMakePackageConfigHelpers)
write_basic_package_version_file("FooConfigVersion.cmake"
	VERSION ${FooPackage_VERSION}
	COMPATIBILITY SameMajorVersion
)

install(FILES "${CMAKE_BINARY_DIR}/FooConfigVersion.cmake"
	DESTINATION /lib/cmake/Foo
)
