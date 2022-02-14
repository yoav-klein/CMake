
# Step 3 - Creating a Config file
---
This gets us a little closer to how things are really done.

In this example, we'll create a Config file for our Package, and install it along with the
import file, so that consumers can use `find_package` to consume our package.


## Usage

First, build and install:
```
$ cd libmath
$ mkdir build; cd build
$ cmake ..
$ cmake --build .
$ cmake --install . --prefix /some/path
```

This will install the files in `/some/path`.

Now use with `find_package`:
```
$ cd using-mymath
$ mkdir build; cd build
$ CMAKE_PREFIX_PATH=/some/path cmake ..
$ cmake --build .
$ ./test
```

NOTE: We need to set the `CMAKE_PREFIX_PATH` so that `find_package` will look for our configuration package in the right place.