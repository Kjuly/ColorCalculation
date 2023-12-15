//
//  ColorConstants.swift
//  ColorCalculation
//
//  Created by Kjuly on 14/5/2023.
//  Copyright © 2023 Kjuly. All rights reserved.
//

import Foundation

/*
 * REF:
 *   - https://www.tigercolor.com/color-lab/color-theory/color-theory-intro.htm
 *   - https://www.easyrgb.com/en/
 */

// RGB
public let kColorRGBAtMax: Float = 255
// HSB/HSV
public let kColorHueAtMax: Float        = 360
public let kColorSaturationAtMax: Float = 100
public let kColorBrightnessAtMax: Float = 100

// MARK: - ColorFormat

public enum ColorFormat: Int {
  case none = 0
  case hex
  case rgb
  case hsb
}
