
# Step 2
---
In this step, we use `install(EXPORT)` in order to create an _import file_.
It works like this: When we call `install(TARGETS)` we specify the `EXPORT` option, which
associates an _export set_ with the given targets (in this case - target). We then call `insatll(EXPORT)`
to generate the import file. 

Now, any consumer project can `include` the import file, and will have an IMPORTED target.
The `NAMESPACE` argument is prepended to all the targets associated with this export set. So 
for example, the target `MyMath` will become `MyMath::MyMath`.
This is a convention, and is used so that when used by the consuming as such:
```
target_link_libraries(MyCalculator MyMath::MyMath)
```
This `MyMath::MyMath` cannot be a file name, so it must be a name of a target, and if such target doesn't exist, CMake
will generate an error during generation.


We also have the `using-mymath` directory here, which simulates a consumer project, which consumes the MyMath library.