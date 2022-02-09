
# Use pkg-config
---

This demonstrates the use of pkg-config in CMake.

We use `find_package` to first find `pkg-config` on the system. Then, we use `pkg_check_modules` 
in order to find the `krb5` package.

If it's found, it declares a set of variables in the calling scope, for example:
```
KRB_FOUND
KRB_LIBRARIES
KRB_LIBRARY_DIRS
```

etc.


