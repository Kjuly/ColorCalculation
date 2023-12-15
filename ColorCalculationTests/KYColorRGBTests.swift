//
//  ColorRGBTests.swift
//  ColorCalculation
//
//  Created by Kjuly on 14/5/2023.
//  Copyright © 2023 Kjuly. All rights reserved.
//

import XCTest
@testable import ColorCalculation

final class ColorRGBTests: XCTestCase {

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  // MARK: - Tests

  //
  // ColorRGB.init(_:_:_:)
  //
  func testInit() {
    let rgb = ColorRGB(50, 100, 150)
    XCTAssertEqual(rgb.r, 50)
    XCTAssertEqual(rgb.g, 100)
    XCTAssertEqual(rgb.b, 150)
  }

  //
  // ColorRGB.init(from:)
  //
  func testInitFromHex() {
    var rgb: ColorRGB
    rgb = ColorRGB(from: 0x000000)
    XCTAssertEqual(rgb.r, 0)
    XCTAssertEqual(rgb.g, 0)
    XCTAssertEqual(rgb.b, 0)

    rgb = ColorRGB(from: 0xFFFFFF)
    XCTAssertEqual(rgb.r, 255)
    XCTAssertEqual(rgb.g, 255)
    XCTAssertEqual(rgb.b, 255)

    rgb = ColorRGB(from: 0xFF0000)
    XCTAssertEqual(rgb.r, 255)
    XCTAssertEqual(rgb.g, 0)
    XCTAssertEqual(rgb.b, 0)

    rgb = ColorRGB(from: 0x00FF00)
    XCTAssertEqual(rgb.r, 0)
    XCTAssertEqual(rgb.g, 255)
    XCTAssertEqual(rgb.b, 0)

    rgb = ColorRGB(from: 0x0000FF)
    XCTAssertEqual(rgb.r, 0)
    XCTAssertEqual(rgb.g, 0)
    XCTAssertEqual(rgb.b, 255)
  }

  //
  // ColorRGB.toHex()
  //
  func testToHex() {
    XCTAssertEqual(0x000000, ColorRGB(0, 0, 0).toHex())
    XCTAssertEqual(0xFFFFFF, ColorRGB(255, 255, 255).toHex())
    XCTAssertEqual(0xFF0000, ColorRGB(255, 0, 0).toHex())
    XCTAssertEqual(0x00FF00, ColorRGB(0, 255, 0).toHex())
    XCTAssertEqual(0x0000FF, ColorRGB(0, 0, 255).toHex())
  }

  //
  // ColorRGB.toHex(withPrefix:)
  //
  func testToHexString() {
    XCTAssertEqual("0x000000", ColorRGB(0, 0, 0).toHex(withPrefix: "0x"))
    XCTAssertEqual("#FFFFFF", ColorRGB(255, 255, 255).toHex(withPrefix: "#"))
    XCTAssertEqual("#FF0000", ColorRGB(255, 0, 0).toHex(withPrefix: "#"))
    XCTAssertEqual("00FF00", ColorRGB(0, 255, 0).toHex(withPrefix: nil))
  }

  //
  // static ColorRGB.toHSB()
  //
  func testToHSB() {
    // http://colorizer.org

    let accuracy: Float = 0.005

    var hsb: ColorHSB
    hsb = ColorRGB(0, 0, 0).toHSB()
    XCTAssertEqual(hsb.h, 0, accuracy: accuracy)
    XCTAssertEqual(hsb.s, 0, accuracy: accuracy)
    XCTAssertEqual(hsb.b, 0, accuracy: accuracy)

    hsb = ColorRGB(255, 255, 255).toHSB()
    XCTAssertEqual(hsb.h, 0, accuracy: accuracy)
    XCTAssertEqual(hsb.s, 0, accuracy: accuracy)
    XCTAssertEqual(hsb.b, 100, accuracy: accuracy)

    hsb = ColorRGB(255, 0, 0).toHSB()
    XCTAssertEqual(hsb.h, 0, accuracy: accuracy)
    XCTAssertEqual(hsb.s, 100, accuracy: accuracy)
    XCTAssertEqual(hsb.b, 100, accuracy: accuracy)

    hsb = ColorRGB(0, 255, 0).toHSB()
    XCTAssertEqual(hsb.h, 120, accuracy: accuracy)
    XCTAssertEqual(hsb.s, 100, accuracy: accuracy)
    XCTAssertEqual(hsb.b, 100, accuracy: accuracy)

    hsb = ColorRGB(0, 0, 255).toHSB()
    XCTAssertEqual(hsb.h, 240, accuracy: accuracy)
    XCTAssertEqual(hsb.s, 100, accuracy: accuracy)
    XCTAssertEqual(hsb.b, 100, accuracy: accuracy)

    hsb = ColorRGB(85, 255, 0).toHSB()
    XCTAssertEqual(hsb.h, 100, accuracy: accuracy)
    XCTAssertEqual(hsb.s, 100, accuracy: accuracy)
    XCTAssertEqual(hsb.b, 100, accuracy: accuracy)

    hsb = ColorRGB(0, 170, 255).toHSB()
    XCTAssertEqual(hsb.h, 200, accuracy: accuracy)
    XCTAssertEqual(hsb.s, 100, accuracy: accuracy)
    XCTAssertEqual(hsb.b, 100, accuracy: accuracy)

    hsb = ColorRGB(255, 0, 255).toHSB()
    XCTAssertEqual(hsb.h, 300, accuracy: accuracy)
    XCTAssertEqual(hsb.s, 100, accuracy: accuracy)
    XCTAssertEqual(hsb.b, 100, accuracy: accuracy)

    hsb = ColorRGB(255, 128, 128).toHSB()
    XCTAssertEqual(hsb.h, 0, accuracy: accuracy)
    XCTAssertEqual(hsb.s, 49.8, accuracy: accuracy)
    XCTAssertEqual(hsb.b, 100, accuracy: accuracy)

    hsb = ColorRGB(128, 128, 128).toHSB()
    XCTAssertEqual(hsb.h, 0, accuracy: accuracy)
    XCTAssertEqual(hsb.s, 0, accuracy: accuracy)
    XCTAssertEqual(hsb.b, 50.2, accuracy: accuracy)
  }

  // MARK: - Tests Brightness

  //
  // ColorRGB.isBrightColor()
  //
  func testisIsBrightColor() {
    XCTAssertEqual(ColorRGB(from: 0x000000).isBrightColor(), false)
    XCTAssertEqual(ColorRGB(from: 0xFFFFFF).isBrightColor(), true)

    XCTAssertEqual(ColorRGB(from: 0xE51C23).isBrightColor(), false)
    XCTAssertEqual(ColorRGB(from: 0xE91E63).isBrightColor(), false)
    XCTAssertEqual(ColorRGB(from: 0x9C27B0).isBrightColor(), false)
    XCTAssertEqual(ColorRGB(from: 0x673AB7).isBrightColor(), false)
    XCTAssertEqual(ColorRGB(from: 0x3F51B5).isBrightColor(), false)
    XCTAssertEqual(ColorRGB(from: 0x5677FC).isBrightColor(), false)

    XCTAssertEqual(ColorRGB(from: 0x03A9F4).isBrightColor(), true)
    XCTAssertEqual(ColorRGB(from: 0x00BCD4).isBrightColor(), true)

    XCTAssertEqual(ColorRGB(from: 0x009688).isBrightColor(), false)
    XCTAssertEqual(ColorRGB(from: 0x259B24).isBrightColor(), false)

    XCTAssertEqual(ColorRGB(from: 0x8BC34A).isBrightColor(), true)
    XCTAssertEqual(ColorRGB(from: 0xCDDC39).isBrightColor(), true)
    XCTAssertEqual(ColorRGB(from: 0xFFEB3B).isBrightColor(), true)
    XCTAssertEqual(ColorRGB(from: 0xFFC107).isBrightColor(), true)
    XCTAssertEqual(ColorRGB(from: 0xFF9800).isBrightColor(), true)

    XCTAssertEqual(ColorRGB(from: 0xFF5722).isBrightColor(), true)

    XCTAssertEqual(ColorRGB(from: 0x795548).isBrightColor(), false)

    XCTAssertEqual(ColorRGB(from: 0x9E9E9E).isBrightColor(), true)

    XCTAssertEqual(ColorRGB(from: 0x607D8B).isBrightColor(), false)
    XCTAssertEqual(ColorRGB(from: 0x000000).isBrightColor(), false)

    XCTAssertEqual(ColorRGB(from: 0xFFFFFF).isBrightColor(), true)
  }

  // MARK: - Tests Equatable Protocol

  func testEquatable() {
    let rgb_1 = ColorRGB(10, 20, 30)
    var rgb_2 = ColorRGB(10, 20, 30)
    XCTAssertTrue(rgb_1 == rgb_2)

    rgb_2.r = 11
    rgb_2.g = 20
    rgb_2.b = 30
    XCTAssertTrue(rgb_1 != rgb_2)

    rgb_2.r = 10
    rgb_2.g = 21
    rgb_2.b = 30
    XCTAssertTrue(rgb_1 != rgb_2)

    rgb_2.r = 10
    rgb_2.g = 20
    rgb_2.b = 31
    XCTAssertTrue(rgb_1 != rgb_2)
  }
}
