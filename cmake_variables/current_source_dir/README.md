

# CURRENT_LIST_DIR vs CURRENT_SOURCE_DIR
---

This demonstrates the difference between the `CMAKE_CURRENT_LIST_DIR` and the `CMAKE_CURRENT_SOURCE_DIR` variables.

Run once with `include` and once with `add_subdirectory`.
When you run with `add_subdirectory` the CURRENT_LIST_DIR and CURRENT_SOURCE_DIR are the same.
When you run with `include` they're not.
