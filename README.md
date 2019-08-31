# CollectiveSwift

A small quality-of-life enhancement for practical UIKit development in Swift.

I often find myself writing, e.g.:

```swift
someViews.forEach {
    $0.tintColor = someColor
}
```

CollectiveSwift enables the equivalent:

```swift
someViews.all.tintColor = someColor
```

This goes nicely with outlet collections from storyboards.

Extensions for a few common properties are included, but it's easy to add your own.
For example:

```swift
extension Collective where Element: MyObject {

    var someProperty: Bool {
        get { Collective.gettersAreNotSupportedFailure() }
        set { base.forEach { $0.someProperty = newValue } }
    }

}
```

## License

MIT
