# Fetch Content Example
---

This demonstrates the use of FetchContent module with our little `calculator` and `mymath` projects.
The `CMakeLists.txt` file in the `Calculator` project fetches the `mymath` project using `FetchContent`.

You can notice that the `mymath` project is built only when we run the `cmake --build`. Beforehand, it is just being
fetched and configured.
