# What is it?

It's just a Swift Package wrapper for [pop framework by facebook](https://github.com/facebookarchive/pop).

# Why

I faced an issue after adding [FluidSlider](https://github.com/Ramotion/fluid-slider) as SPM dependency to my project.
```log
No such module 'pop'
```

**FluidSlider** depends on **pop** with Carthage but misses the **pop** dependency when used as Swift Package.

# How

1) **pop.xcframework** inside my package contains binaries of **pop** framework built for iOS devices and also iOS simulator. `Build Libraries for Distribution` was set to `Yes` to prevent problems with newer XCode and Swift versions in the future.

2) I forked FluidSlider and added this repo as a dependency. 
    > https://github.com/vmzhivetyev/fluid-slider/commit/079db2d8ac676edd47c62200656e390a80909368
