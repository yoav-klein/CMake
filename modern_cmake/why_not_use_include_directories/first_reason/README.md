
# First reason
---

Simply because when you use `include_directories` in a subdirectory, and then use `add_library` for example to create a library target, those include directories won't be propagated to linking targets outside the subdirectory.
