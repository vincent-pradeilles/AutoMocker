# AutoMockable

![platforms](https://img.shields.io/badge/platforms-iOS-333333.svg)
![pod](https://img.shields.io/cocoapods/v/AutoMockable.svg)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## Context

AutoMockable is a Swift framework that leverages the type system in order to let you easily create mocked instances of your data types.

Here's an example of how it can be used:

```swift
struct MyData {
    let bool: Bool
    let string: String
    let integers: [Int]
}

let mocked = mock(MyData.init) // a mocked instance has been created 🎉
```

## Requirements

Xcode 10+ & Swift 5.0

## Installation

### CocoaPods

Add the following to your `Podfile`:

`pod "AutoMockable"`

### Carthage

Add the following to your `Cartfile`:

`github "vincent-pradeilles/AutoMockable"`

## Author

* Twitter: [@v_pradeilles](https://twitter.com/v_pradeilles)
