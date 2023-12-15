//
//  ColorHSBTests.swift
//  ColorCalculation
//
//  Created by Kjuly on 14/5/2023.
//  Copyright © 2023 Kjuly. All rights reserved.
//

import XCTest
@testable import ColorCalculation

final class ColorHSBTests: XCTestCase {

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  // MARK: - Tests

  //
  // ColorHSB.init(_:_:_:)
  //
  func testInit() {
    let hsb = ColorHSB(360, 100, 100)
    XCTAssertEqual(hsb.h, 360)
    XCTAssertEqual(hsb.s, 100)
    XCTAssertEqual(hsb.b, 100)
  }

  //
  // static ColorHSB.toRGB()
  //
  func testToRGB() {
    // http://colorizer.org

    var rgb: ColorRGB
    rgb = ColorHSB(0, 0, 0).toRGB()
    XCTAssertEqual(rgb.r, 0)
    XCTAssertEqual(rgb.g, 0)
    XCTAssertEqual(rgb.b, 0)

    rgb = ColorHSB(0, 0, 100).toRGB()
    XCTAssertEqual(rgb.r, 255)
    XCTAssertEqual(rgb.g, 255)
    XCTAssertEqual(rgb.b, 255)

    rgb = ColorHSB(0, 100, 100).toRGB()
    XCTAssertEqual(rgb.r, 255)
    XCTAssertEqual(rgb.g, 0)
    XCTAssertEqual(rgb.b, 0)

    rgb = ColorHSB(120, 100, 100).toRGB()
    XCTAssertEqual(rgb.r, 0)
    XCTAssertEqual(rgb.g, 255)
    XCTAssertEqual(rgb.b, 0)

    rgb = ColorHSB(240, 100, 100).toRGB()
    XCTAssertEqual(rgb.r, 0)
    XCTAssertEqual(rgb.g, 0)
    XCTAssertEqual(rgb.b, 255)

    rgb = ColorHSB(360, 100, 100).toRGB()
    XCTAssertEqual(rgb.r, 255)
    XCTAssertEqual(rgb.g, 0)
    XCTAssertEqual(rgb.b, 0)

    rgb = ColorHSB(100, 100, 100).toRGB()
    XCTAssertEqual(rgb.r, 85)
    XCTAssertEqual(rgb.g, 255)
    XCTAssertEqual(rgb.b, 0)

    rgb = ColorHSB(200, 100, 100).toRGB()
    XCTAssertEqual(rgb.r, 0)
    XCTAssertEqual(rgb.g, 170)
    XCTAssertEqual(rgb.b, 255)

    rgb = ColorHSB(300, 100, 100).toRGB()
    XCTAssertEqual(rgb.r, 255)
    XCTAssertEqual(rgb.g, 0)
    XCTAssertEqual(rgb.b, 255)

    rgb = ColorHSB(0, 50, 100).toRGB()
    XCTAssertEqual(rgb.r, 255)
    XCTAssertEqual(rgb.g, 128)
    XCTAssertEqual(rgb.b, 128)

    rgb = ColorHSB(0, 0, 50).toRGB()
    XCTAssertEqual(rgb.r, 128)
    XCTAssertEqual(rgb.g, 128)
    XCTAssertEqual(rgb.b, 128)
  }

  // MARK: - Tests Equatable Protocol

  func testEquatable() {
    let hsb_1 = ColorHSB(10, 20, 30)
    var hsb_2 = ColorHSB(10, 20, 30)
    XCTAssertTrue(hsb_1 == hsb_2)

    hsb_2.h = 11
    hsb_2.s = 20
    hsb_2.b = 30
    XCTAssertTrue(hsb_1 != hsb_2)

    hsb_2.h = 10
    hsb_2.s = 21
    hsb_2.b = 30
    XCTAssertTrue(hsb_1 != hsb_2)

    hsb_2.h = 10
    hsb_2.s = 20
    hsb_2.b = 31
    XCTAssertTrue(hsb_1 != hsb_2)
  }
}
