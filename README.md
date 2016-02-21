# [Swifton](https://github.com/necolt/Swifton) TodoApp Example App.

## Getting Started

* Install latest Development snapshot from [Swift.org](https://swift.org/download/) or via [swiftenv](https://github.com/kylef/swiftenv).
* Checkout [TodoApp](https://github.com/swiftonio/example) example project.
* Run ```swift build``` inside app.
* Run ```./.build/debug/TodoApp```.
* Open ```http://0.0.0.0:8000/todos``` in your browser.

## Updating

You may get this error after updating TodoApp:
```
error: The dependency graph could not be satisfied because an update to...
```
Simply remove ```Packages``` directory with command ```rm -r Packages``` and rebuild with ```swift build```
