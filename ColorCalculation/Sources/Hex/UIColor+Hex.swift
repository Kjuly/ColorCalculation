//
//  UIColor+Hex.swift
//  ColorCalculation
//
//  Created by Kjuly on 30/3/2017.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import Foundation

#if os(iOS) || os(watchOS)
import UIKit

extension UIColor {
  public convenience init(hex: Int32, alpha: CGFloat = 1) {
    self.init(
      red: Double((hex & 0xFF0000) >> 16) / 255.0,
      green: Double((hex & 0x00FF00) >> 8) / 255.0,
      blue: Double((hex & 0x0000FF) >> 0) / 255.0,
      alpha: alpha)
  }
}

extension UIColor: ColorHexProtocol {

  public static func makeWithHex(_ hex: Int32, alpha: CGFloat) -> UIColor {
    return UIColor(hex: hex, alpha: alpha)
  }

  #if os(iOS)
  public var hex: Int32 {
    var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0
    if getRed(&r, green: &g, blue: &b, alpha: nil) {
      return Int32(Int(r * 255) << 16 | Int(g * 255) << 8 | Int(b * 255))
    } else {
      return 0
    }
  }
  #endif
}
#endif
