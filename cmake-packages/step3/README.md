
# Step 4 - Multi configuration
---

We may want to build our library in Release and Debug modes, and to allow downstreams to 
link against each of them.

In this example, we use the `$<CONFIG>` generator expression in the `DESTINATION`
argument in the `install(TARGETS)` command. 

This way, when we build in Debug, the library will be placed in `lib/Debug`, and when we 
build in Release mode, the library will be placed in `lib/Release`.

Accordingly, when we install the export-set, a `MyMathTargets-debug.cmake` and `MyMathTargets-release.cmake` is generated,
and when the downstream project uses `find_package(MyMath)`, it will link against the correct library, depending if it
is building in Debug or Release.

## Usage
First, build the MyMath project in both Debug and Release:
```
$ make build-debug
$ make build-release
```

Now, let's link against each:
```
$ make build-test-debug
$ make test

$ make build-test-release
$ make test
```