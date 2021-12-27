
# CMAKE_RUNTIME_OUTPUT_DIRECTORY per target
---

This demonstrates the use of the `RUNTIME_OUTPUT_DIRECTORY` property of targets.
Basically what we do is use:
```
set_target_properties(some_target PROPERTIES
	RUNTIME_OUTPUT_DIRECTORY path/to/output
	LIBRARY_OUTPUT_DIRECTORY path/to/sofiles
	ARCHIVE_OUTPUT_DIRECTORY path/to/afiles
)
```

### NOTE:
When you set the `LIBRARY_OUTPUT_DIRECTORY` property on the `myapp` targets, it doesn't influence the `libfoo.so` location, although you could think that it would since it links to it. In order to set the `libfoo.so` output directory, you need to set it to the `foo` target in the nested CMakeLists.txt.
