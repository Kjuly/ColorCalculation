//
//  Color+Switch.swift
//  ColorCalculation
//
//  Created by Kjuly on 12/12/2023.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import Foundation
import SwiftUI

#if os(macOS)
import AppKit

extension Color {
  public var toNSColor: NSColor {
    return NSColor(self)
  }
}

extension NSColor {
  public var toColor: Color {
    return Color(self)
  }
}

#else
import UIKit

  #if os(iOS)
extension Color {
  public var toUIColor: UIColor {
    return UIColor(self)
  }
}
  #endif

extension UIColor {
  public var toColor: Color {
    return Color(self)
  }
}
#endif
