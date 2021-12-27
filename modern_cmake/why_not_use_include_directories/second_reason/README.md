
# Second reason
---

The idea is to limit the scope of include directories as possible. We don't want targets to have include directories that they don't really need.

If you `add_subdirectory` after `include_directories`, all targets created in the subdirectory and descendants of that subdirectory will have those directories in their `include` path.
