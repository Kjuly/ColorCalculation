//
//  ColorConstantsTests.swift
//  ColorCalculation
//
//  Created by Kjuly on 14/5/2023.
//  Copyright © 2023 Kjuly. All rights reserved.
//

import XCTest
@testable import ColorCalculation

final class ColorConstantsTests: XCTestCase {

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  // MARK: - Tests

  //
  // Constants
  //
  func testConstants() {
    XCTAssertEqual(kColorRGBAtMax, 255)

    XCTAssertEqual(kColorHueAtMax, 360)
    XCTAssertEqual(kColorSaturationAtMax, 100)
    XCTAssertEqual(kColorBrightnessAtMax, 100)
  }

  //
  // enum ColorFormat
  //
  func testColorFormat() {
    XCTAssertEqual(ColorFormat.none.rawValue, 0)
    XCTAssertEqual(ColorFormat.hex.rawValue, 1)
    XCTAssertEqual(ColorFormat.rgb.rawValue, 2)
    XCTAssertEqual(ColorFormat.hsb.rawValue, 3)
  }
}
