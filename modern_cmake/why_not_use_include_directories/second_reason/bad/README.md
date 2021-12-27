
In the bad example, we use `include_directories` in the root CMakeLists.txt, and then `add_subdirectory` of the `libfoo`. This way, the library target `foo` will have the include directories of the parent project, which will lead to a collision.
