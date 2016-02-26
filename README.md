# [Swifton](https://github.com/necolt/Swifton) TodoApp Example App.

## Getting Started

* Install latest Development snapshot from [Swift.org](https://swift.org/download/) or via [swiftenv](https://github.com/kylef/swiftenv).
* Checkout [TodoApp](https://github.com/necolt/Swifton-TodoApp) example project.
* Run ```swift build``` inside app.
* Run ```./.build/debug/Swifton-TodoApp```.
* Open ```http://0.0.0.0:8000/todos``` in your browser.

## Updating

You may get this error after updating TodoApp:
```
error: The dependency graph could not be satisfied because an update to...
```

Simply run:

```
swift build --clean dist
swift build
```

## Try it out now!

Just try it out by deploying to Swifton.me (not affiliated with [Swifton](https://github.com/necolt/Swifton)).

[![Deploy to Swifton.me](https://serve.swifton.me/badge.png)](https://serve.swifton.me/oneclick?repository=https://github.com/necolt/Swifton-TodoApp)

