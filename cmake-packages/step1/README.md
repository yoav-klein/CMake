
# Step 1 - Installing a target
---

In this step, we use `install` command to install our library.
We use `install(TARGETS)`, which installs the outputs of the given targets.
In this case, this is the `libMyMath.a` file.


We then use `install(FILES)` to install the `mymath.h` file into the `include` directory.
This also calls `install FILES` in order to install the `mymath.h` file to the `include` directory.

## Usage
Run
```
$ mkdir build; cd build
$ cmake ..
$ cmake --build .
$ cmake --install .
```

Now you can go look at the files generated in `/usr/local/lib`