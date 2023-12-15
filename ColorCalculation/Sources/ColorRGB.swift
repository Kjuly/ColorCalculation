//
//  ColorRGB.swift
//  ColorCalculation
//
//  Created by Kjuly on 14/5/2023.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import Foundation

public struct ColorRGB {

  /// red,   0~255
  public var r: Int
  /// green, 0~255
  public var g: Int
  /// blue,  0~255
  public var b: Int

  // MARK: - Init

  public init(_ r: Int, _ g: Int, _ b: Int) {
    self.r = r
    self.g = g
    self.b = b
  }

  public init(from hex: Int32) {
    self.r = Int((hex & 0xFF0000) >> 16)
    self.g = Int((hex & 0x00FF00) >> 8)
    self.b = Int((hex & 0x0000FF) >> 0)
  }

  // MARK: - To Hex

  public func toHex() -> Int32 {
    return Int32(self.r << 16 | self.g << 8 | self.b)
  }

  public func toHex(withPrefix thePrefix: String?) -> String {
    return String(format: "%@%02X%02X%02X", (thePrefix ?? ""), self.r, self.g, self.b)
  }

  // MARK: - To HSB

  @inlinable func _min3(_ x: Float, _ y: Float, _ z: Float) -> Float {
    return (y <= z ? (x <= y ? x : y) : (x <= z ? x : z))
  }

  @inlinable func _max3(_ x: Float, _ y: Float, _ z: Float) -> Float {
    return (y >= z ? (x >= y ? x : y) : (x >= z ? x : z))
  }

  public func toHSB() -> ColorHSB {
    let r = Float(self.r)
    let g = Float(self.g)
    let b = Float(self.b)

    let max: Float = _max3(r, g, b)
    let min: Float = _min3(r, g, b)
    let d: Float = max - min

    var h: Float
    let s: Float = (0 == max ? 0 : d / max)
    let v: Float = max / kColorRGBAtMax

    if max == min {
      h = 0
    } else if max == r {
      h = (g - b) + d * (g < b ? 6: 0)
      h /= 6 * d
    } else if max == g {
      h = (b - r) + d * 2
      h /= 6 * d
    } else if max == b {
      h = (r - g) + d * 4
      h /= 6 * d
    } else {
      h = 0
    }
    return ColorHSB(
      h * kColorHueAtMax,
      s * kColorSaturationAtMax,
      v * kColorBrightnessAtMax)
  }

  // MARK: - Brightness

  /// Check whether the color is bright or dark.
  ///
  /// Can be used to determine text color on background w/ this color. Use black
  ///   text color if it's on bright background color, otherwise, use white.
  ///
  public func isBrightColor() -> Bool {
    /*
     * Counting the perceptive luminance - human eye favors green color.
     * REF:
     *  - https://stackoverflow.com/questions/1855884/determine-font-color-based-on-background-color
     *  - https://stackoverflow.com/questions/596216/formula-to-determine-brightness-of-rgb-color
     *  - https://stackoverflow.com/questions/3942878/how-to-decide-font-color-in-white-or-black-depending-on-background-color/3943023
     *
     * Sample:
     *  - https://codepen.io/WebSeed/full/pvgqEq/
     *
     * double luminance = (.299f * rgb.r + .587f * rgb.g + .114f * rgb.b) / 255.f;
     * return (luminance > .5f);
     */
    return (0.299 * Float(self.r) + 0.587 * Float(self.g) + 0.114 * Float(self.b)) > 127.5
  }
}

// MARK: - Equatable
extension ColorRGB: Equatable {

  public static func == (lhs: ColorRGB, rhs: ColorRGB) -> Bool {
    return lhs.r == rhs.r && lhs.g == rhs.g && lhs.b == rhs.b
  }
}
