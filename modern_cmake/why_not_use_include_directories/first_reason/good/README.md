
In the bad example, we use `include_directories` in the libfoo subdirectory. This way, the INCLUDE property is not propagated to any linked targets, so the `myapp` target doesn't know where to look for the `foo.h` header file.
