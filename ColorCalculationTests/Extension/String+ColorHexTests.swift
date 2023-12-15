//
//  String+ColorHexTests.swift
//  ColorCalculationTests
//
//  Created by Kjuly on 12/12/2023.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import XCTest
@testable import ColorCalculation

final class String_ColorHexTests: XCTestCase {

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  //
  // String.getter:hex
  //
  func testHexFromString() {
    XCTAssertEqual(0x000000, "000000".toColorHex)
    XCTAssertEqual(0xFFFFFF, "FFFFFF".toColorHex)
    XCTAssertEqual(0xFF0000, "FF0000".toColorHex)
    XCTAssertEqual(0x00FF00, "00FF00".toColorHex)
    XCTAssertEqual(0x0000FF, "0000FF".toColorHex)

    XCTAssertEqual(0x000000, "0x000000".toColorHex)
    XCTAssertEqual(0xFFFFFF, "#FFFFFF".toColorHex)
    XCTAssertEqual(0xFF0000, "*FF0000".toColorHex)
    XCTAssertEqual(0x00FF00, "00FF00#".toColorHex)
    XCTAssertEqual(0x0000FF, "?0000FF".toColorHex)
  }
}
