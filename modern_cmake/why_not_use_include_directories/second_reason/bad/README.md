
In the bad example, we use `include_directories` in the root CMakeLists.txt, and then `add_subdirectory` to the `subproject`. This way, the target `subproject` will have the include directories of the parent project, which is not what it wants to include.

In this case, we "accidentaly" changed `subproject/utils.h` to `subproject/utilss.h`. But since the subproject inherits the include directories, it will find the parent's `include` directory and use this.
