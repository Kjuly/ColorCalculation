# ColorCalculation
A color extension library for calculating hex, brightness, etc.

![macOS][macOS-Badge] ![iOS][iOS-Badge] ![watchOS][watchOS-Badge]  

[macOS-Badge]: https://img.shields.io/badge/macOS-12.0%2B-blue?labelColor=00367A&color=3081D0
[iOS-Badge]: https://img.shields.io/badge/iOS-15.5%2B-blue?labelColor=00367A&color=3081D0
[watchOS-Badge]: https://img.shields.io/badge/watchOS-6.0%2B-blue?labelColor=00367A&color=3081D0

## Installation

See the following subsections for details on the different installation methods.

- [Swift Package Manager](INSTALLATION.md#swift-package-manager)
- [CocoaPods](INSTALLATION.md#cocoaPods)
- [Carthage](INSTALLATION.md#carthage)
- [Submodule](INSTALLATION.md#submodule)

## Color Hex Usage

Create a color from hex value.

```swift
// Notes: there's an optional `alpha` arg available.
//   e.g., Color(hex: 0xFFFFFF, alpha: 0.5)
Color(hex: 0xFFFFFF)
UIColor(hex: 0xFFFFFF)
NSColor(hex: 0xFFFFFF)
```

Or get the hex value from a color.

```swift
color.hex
uiColor.hex
nsColor.hex
```

## Color Brightness Usage

Get to know a color is bright or dark. 

It can be used to determine the color of text on the background. If the background color is bright, use black text color, otherwise use white.

```swift
let backgroundColor = UIColor(hex: 0xFFFFFF)
let foregroundColor: UIColor = (backgroundColor.isBrightColor ? .black : .white) 
// `foregroundColor = .black` in this case
```

## Color Conversion Usage

Convenient extension for converting colors between Color, UIColor and NSColor.

```swift
color.toUIColor
color.toNSColor

uiColor.toColor
nsColor.toColor
```

