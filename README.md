# ColorCalculation
A color extension library for calculating hex, brightness, etc.

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FKjuly%2FColorCalculation%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/Kjuly/ColorCalculation)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FKjuly%2FColorCalculation%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/Kjuly/ColorCalculation)  
![macOS][macOS-Badge] ![iOS][iOS-Badge] ![watchOS][watchOS-Badge]  
[![SPM][SPM-Badge]][SPM-Link] [![CocoaPods][CocoaPods-Badge]][CocoaPods-Link] [![Carthage][Carthage-Badge]][Carthage-Link]

[macOS-Badge]: https://img.shields.io/badge/macOS-12.0%2B-blue?labelColor=00367A&color=3081D0
[iOS-Badge]: https://img.shields.io/badge/iOS-15.5%2B-blue?labelColor=00367A&color=3081D0
[watchOS-Badge]: https://img.shields.io/badge/watchOS-6.0%2B-blue?labelColor=00367A&color=3081D0

[SPM-Badge]: https://img.shields.io/github/v/tag/Kjuly/ColorCalculation?label=SPM&labelColor=2F4858&color=A8DF8E
[SPM-Link]: https://swiftpackageindex.com/Kjuly/ColorCalculation
[CocoaPods-Badge]: https://img.shields.io/cocoapods/v/ColorCalculation?label=CocoaPods&labelColor=2F4858&color=A8DF8E
[CocoaPods-Link]: https://cocoapods.org/pods/ColorCalculation
[Carthage-Badge]: https://img.shields.io/github/v/tag/Kjuly/ColorCalculation?label=Carthage&labelColor=2F4858&color=A8DF8E
[Carthage-Link]: https://swiftpackageindex.com/Kjuly/ColorCalculation

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

An extension to String is also provided to get hex values in Int32.

```swift
// Below all are valid and returns 0xFFFFFF.
"FFFFFF".toColorHex
"#FFFFFF".toColorHex
"0xFFFFFF".toColorHex
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

