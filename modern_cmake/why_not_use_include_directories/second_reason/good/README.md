
In the good example, we use `target_include_directories` so the `include` directory is scoped only to the `myapp` target. That results in an error when trying to build the subproject, since there's no `utils.h` found for the subproject.

