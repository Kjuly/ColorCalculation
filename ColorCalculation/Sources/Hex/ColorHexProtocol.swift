//
//  ColorHexProtocol.swift
//  ColorCalculation
//
//  Created by Kjuly on 12/12/2023.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import Foundation

public protocol ColorHexProtocol {

  associatedtype ProtocolColorClass

  static func makeWithHex(_ hex: Int32, alpha: CGFloat) -> ProtocolColorClass

#if !os(watchOS)
  var hex: Int32 { get }
#endif
}

extension ColorHexProtocol {

  public static func makeWithHex(_ hex: Int32) -> ProtocolColorClass {
    return makeWithHex(hex, alpha: 1)
  }

  public static func makeWithHex(_ hex: String) -> ProtocolColorClass {
    return makeWithHex(hex.toColorHex, alpha: 1)
  }

  public static func makeWithHex(_ hex: String, alpha: CGFloat) -> ProtocolColorClass {
    return makeWithHex(hex.toColorHex, alpha: alpha)
  }
}
