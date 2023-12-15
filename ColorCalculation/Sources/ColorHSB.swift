//
//  ColorHSB.swift
//  ColorCalculation
//
//  Created by Kjuly on 14/5/2023.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import Foundation

// REF: http://colorizer.org

public struct ColorHSB {

  /// hue, 0~360 (0 to 360°)
  public var h: Float
  /// saturation, 0~100 (0 to 100%)
  public var s: Float
  /// brightness (same as value of HSV), 0~100 (0 to 100%)
  public var b: Float

  // MARK: - Init

  public init(_ h: Float, _ s: Float, _ b: Float) {
    self.h = h
    self.s = s
    self.b = b
  }

  // MARK: - To RGB

  public func toRGB() -> ColorRGB {
    /*
     * REF:
     *  - https://stackoverflow.com/questions/17242144/javascript-convert-hsb-hsv-color-to-rgb-accurately
     *  - http://colorizer.org
     *  - https://en.wikipedia.org/wiki/HSL_and_HSV
     *  - https://www.tigercolor.com/color-lab/color-theory/color-theory-intro.htm
     */
    // 0 <= h, s, v <= 1
    // v (value) here is the value in HSV, same to HSB's b (brightness).
    let h: Float = self.h / kColorHueAtMax
    let s: Float = self.s / kColorSaturationAtMax
    let v: Float = self.b / kColorBrightnessAtMax

    let i: Int = Int(floor(h * 6))

    let f: Float = h * 6 - Float(i)
    let p: Float = v * (1 - s)
    let q: Float = v * (1 - f * s)
    let t: Float = v * (1 - (1 - f) * s)

    var r, g, b: Float
    switch i % 6 {
    case 0:
      r = v
      g = t
      b = p
    case 1:
      r = q
      g = v
      b = p
    case 2:
      r = p
      g = v
      b = t
    case 3:
      r = p
      g = q
      b = v
    case 4:
      r = t
      g = p
      b = v
    default:
      r = v
      g = p
      b = q
    }
    return ColorRGB(
      Int(round(r * kColorRGBAtMax)),
      Int(round(g * kColorRGBAtMax)),
      Int(round(b * kColorRGBAtMax)))
  }
}

// MARK: - Equatable
extension ColorHSB: Equatable {

  public static func == (lhs: ColorHSB, rhs: ColorHSB) -> Bool {
    return lhs.h == rhs.h && lhs.s == rhs.s && lhs.b == rhs.b
  }
}
