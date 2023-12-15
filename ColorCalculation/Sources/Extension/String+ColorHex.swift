//
//  String+ColorHex.swift
//  ColorCalculation
//
//  Created by Kjuly on 12/12/2023.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import Foundation

extension String {

  public var toColorHex: Int32 {
    let trimmedString = self.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
    var result: UInt64 = 0
    Scanner(string: trimmedString).scanHexInt64(&result)
    return Int32(result)
  }
}
