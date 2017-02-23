On Linux, as of Swift 3.02, URLSession.shared is not yet available in Foundation. Hence, it is somewhat difficult to quickly send an http request.
This package adds a cliShared static prpoerty to URLSession, that it very similar to shared.

Not thorougly tested, so it should mainly be used in educational context.

In addition to this, the package provides a quick helper call for json messages.

License
========
MIT License

Usage
========

Shared session
-------------------
Simply use
````swift
URLSession.cliShared
```
instead of
````swift
URLSession.shared
```

JSON Helper
------------------
```swift
if let url = URL(string: "...") {
    let task = URLSession.cliShared.jsonTask(with: url, completionHandler: { (json, response, error) in
	// ...
    })
    task.resume()
}
```
