//
//  Color+ColorBrightnessProtocolTests.swift
//  ColorCalculationTests
//
//  Created by Kjuly on 12/12/2023.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import XCTest
import SwiftUI
@testable import ColorCalculation

final class Color_ColorBrightnessProtocolTests: XCTestCase {

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  // MARK: - Tests for ColorBrightnessProtocol

  //
  // static ColorBrightnessProtocol.isBrightColorInHex(_:)
  //
  func testisIsBrightColorInHex() {
    XCTAssertEqual(Color.isBrightColorInHex(0x000000), false)
    XCTAssertEqual(Color.isBrightColorInHex(0xFFFFFF), true)

    XCTAssertEqual(Color.isBrightColorInHex(0xE51C23), false)
    XCTAssertEqual(Color.isBrightColorInHex(0xE91E63), false)
    XCTAssertEqual(Color.isBrightColorInHex(0x9C27B0), false)
    XCTAssertEqual(Color.isBrightColorInHex(0x673AB7), false)
    XCTAssertEqual(Color.isBrightColorInHex(0x3F51B5), false)
    XCTAssertEqual(Color.isBrightColorInHex(0x5677FC), false)

    XCTAssertEqual(Color.isBrightColorInHex(0x03A9F4), true)
    XCTAssertEqual(Color.isBrightColorInHex(0x00BCD4), true)

    XCTAssertEqual(Color.isBrightColorInHex(0x009688), false)
    XCTAssertEqual(Color.isBrightColorInHex(0x259B24), false)

    XCTAssertEqual(Color.isBrightColorInHex(0x8BC34A), true)
    XCTAssertEqual(Color.isBrightColorInHex(0xCDDC39), true)
    XCTAssertEqual(Color.isBrightColorInHex(0xFFEB3B), true)
    XCTAssertEqual(Color.isBrightColorInHex(0xFFC107), true)
    XCTAssertEqual(Color.isBrightColorInHex(0xFF9800), true)

    XCTAssertEqual(Color.isBrightColorInHex(0xFF5722), true)

    XCTAssertEqual(Color.isBrightColorInHex(0x795548), false)

    XCTAssertEqual(Color.isBrightColorInHex(0x9E9E9E), true)

    XCTAssertEqual(Color.isBrightColorInHex(0x607D8B), false)
    XCTAssertEqual(Color.isBrightColorInHex(0x000000), false)

    XCTAssertEqual(Color.isBrightColorInHex(0xFFFFFF), true)
  }

#if !os(watchOS)
  //
  // ColorBrightnessProtocol.getter:isBrightColor
  //
  func testisIsBrightColor() {
    XCTAssertEqual(Color.makeWithHex(0x000000).isBrightColor, false)
    XCTAssertEqual(Color.makeWithHex(0xFFFFFF).isBrightColor, true)

    XCTAssertEqual(Color.makeWithHex(0xE51C23).isBrightColor, false)
    XCTAssertEqual(Color.makeWithHex(0xE91E63).isBrightColor, false)
    XCTAssertEqual(Color.makeWithHex(0x9C27B0).isBrightColor, false)
    XCTAssertEqual(Color.makeWithHex(0x673AB7).isBrightColor, false)
    XCTAssertEqual(Color.makeWithHex(0x3F51B5).isBrightColor, false)
    XCTAssertEqual(Color.makeWithHex(0x5677FC).isBrightColor, false)

    XCTAssertEqual(Color.makeWithHex(0x03A9F4).isBrightColor, true)
    XCTAssertEqual(Color.makeWithHex(0x00BCD4).isBrightColor, true)

    XCTAssertEqual(Color.makeWithHex(0x009688).isBrightColor, false)
    XCTAssertEqual(Color.makeWithHex(0x259B24).isBrightColor, false)

    XCTAssertEqual(Color.makeWithHex(0x8BC34A).isBrightColor, true)
    XCTAssertEqual(Color.makeWithHex(0xCDDC39).isBrightColor, true)
    XCTAssertEqual(Color.makeWithHex(0xFFEB3B).isBrightColor, true)
    XCTAssertEqual(Color.makeWithHex(0xFFC107).isBrightColor, true)
    XCTAssertEqual(Color.makeWithHex(0xFF9800).isBrightColor, true)

    XCTAssertEqual(Color.makeWithHex(0xFF5722).isBrightColor, true)

    XCTAssertEqual(Color.makeWithHex(0x795548).isBrightColor, false)

    XCTAssertEqual(Color.makeWithHex(0x9E9E9E).isBrightColor, true)

    XCTAssertEqual(Color.makeWithHex(0x607D8B).isBrightColor, false)
    XCTAssertEqual(Color.makeWithHex(0x000000).isBrightColor, false)

    XCTAssertEqual(Color.makeWithHex(0xFFFFFF).isBrightColor, true)
  }
#endif
}
