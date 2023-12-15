//
//  ColorBrightnessProtocol.swift
//  ColorCalculation
//
//  Created by Kjuly on 12/12/2023.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import Foundation
import SwiftUI

#if os(macOS)
import AppKit
#else
import UIKit
#endif

// MARK: - ColorBrightnessProtocol

public protocol ColorBrightnessProtocol {
  static func isBrightColorInHex(_ hex: Int32) -> Bool
#if !os(watchOS)
  var isBrightColor: Bool { get }
#endif
}

extension ColorBrightnessProtocol where Self: ColorHexProtocol {

  /// Check whether the color is bright or dark
  ///
  /// Can be used to determine text color on background w/ this color. Use black
  ///   text color if it's on bright background color, otherwise, use white.
  ///
  /// - Parameter hex: Color's hex value.
  ///
  public static func isBrightColorInHex(_ hex: Int32) -> Bool {
    return ColorRGB(from: hex).isBrightColor()
  }

#if !os(watchOS)
  public var isBrightColor: Bool {
    return Self.isBrightColorInHex(self.hex)
  }
#endif
}

// MARK: - Extensions

extension Color: ColorBrightnessProtocol {}

#if os(macOS)
extension NSColor: ColorBrightnessProtocol {}
#else
extension UIColor: ColorBrightnessProtocol {}
#endif
