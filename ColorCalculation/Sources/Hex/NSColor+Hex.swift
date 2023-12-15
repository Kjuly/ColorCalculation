//
//  NSColor+Hex.swift
//  ColorCalculation
//
//  Created by Kjuly on 30/3/2017.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import Foundation

#if os(macOS)
import AppKit

extension NSColor {
  public convenience init(hex: Int32, alpha: CGFloat = 1) {
    self.init(
      red: Double((hex & 0xFF0000) >> 16) / 255.0,
      green: Double((hex & 0x00FF00) >> 8) / 255.0,
      blue: Double((hex & 0x0000FF) >> 0) / 255.0,
      alpha: alpha)
  }
}

extension NSColor: ColorHexProtocol {

  public static func makeWithHex(_ hex: Int32, alpha: CGFloat) -> NSColor {
    return NSColor(hex: hex, alpha: alpha)
  }

  public var hex: Int32 {
    if let color = CIColor(color: self) {
      return Int32(Int(color.red * 255) << 16 | Int(color.green * 255) << 8 | Int(color.blue * 255))
    } else {
      return 0
    }
  }
}
#endif
