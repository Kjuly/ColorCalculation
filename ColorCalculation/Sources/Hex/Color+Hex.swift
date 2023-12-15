//
//  Color+Hex.swift
//  ColorCalculation
//
//  Created by Kjuly on 7/12/2023.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import SwiftUI

extension Color {
  public init(hex: Int32, alpha: CGFloat = 1) {
    self.init(
      .sRGB,
      red: Double((hex & 0xFF0000) >> 16) / 255.0,
      green: Double((hex & 0x00FF00) >> 8) / 255.0,
      blue: Double((hex & 0x0000FF) >> 0) / 255.0,
      opacity: alpha)
  }
}

extension Color: ColorHexProtocol {

  public static func makeWithHex(_ hex: Int32, alpha: CGFloat) -> Color {
    return Color(hex: hex, alpha: alpha)
  }

#if !os(watchOS)
  public var hex: Int32 {
    if let components = self.cgColor?.components, components.count >= 3 {
      let r = Int(round(components[0] * 255))
      let g = Int(round(components[1] * 255))
      let b = Int(round(components[2] * 255))
      return Int32((r << 16) | (g << 8) | b)

    } else {
  #if os(macOS)
      return self.toNSColor.hex
  #else
      return self.toUIColor.hex
  #endif
    }
  }
#endif // END #if !os(watchOS)
}
