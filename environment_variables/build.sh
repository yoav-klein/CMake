
#
#
# This demonstrates the use of environemnt variables that affect CMake
#
#


# the CFLAGS environment variable is used 
# to populate the CMAKE_C_FLAGS variable
export CFLAGS=-DFOO

# The CC environemnt variable is used to 
# populate the CMAKE_C_COMPILER environment variable

export CC=/usr/bin/gcc

if [ -d build ]; then
	rm -rf build	
fi
mkdir build

cd build
cmake ..
cmake --build .

./App



cd ..


