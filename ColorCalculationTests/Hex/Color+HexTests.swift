//
//  Color+HexTests.swift
//  ColorCalculationTests
//
//  Created by Kjuly on 12/12/2023.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import XCTest
import SwiftUI
@testable import ColorCalculation

final class Color_HexTests: XCTestCase {

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  // MARK: - Tests

  //
  // Color.init(hex:alpha:)
  //
  func testInitWithHexAndAlpha() throws {
    XCTAssertEqual(Color(hex: 0x000000), Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 1))
    XCTAssertEqual(Color(hex: 0xFF0000), Color(.sRGB, red: 1, green: 0, blue: 0, opacity: 1))
    XCTAssertEqual(Color(hex: 0x00FF00), Color(.sRGB, red: 0, green: 1, blue: 0, opacity: 1))
    XCTAssertEqual(Color(hex: 0x0000FF), Color(.sRGB, red: 0, green: 0, blue: 1, opacity: 1))
    XCTAssertEqual(Color(hex: 0xFFFFFF), Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 1))

    XCTAssertEqual(Color(hex: 0x000000, alpha: 0.3), Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.3))
    XCTAssertEqual(Color(hex: 0xFF0000, alpha: 0.4), Color(.sRGB, red: 1, green: 0, blue: 0, opacity: 0.4))
    XCTAssertEqual(Color(hex: 0x00FF00, alpha: 0.5), Color(.sRGB, red: 0, green: 1, blue: 0, opacity: 0.5))
    XCTAssertEqual(Color(hex: 0x0000FF, alpha: 0.6), Color(.sRGB, red: 0, green: 0, blue: 1, opacity: 0.6))
    XCTAssertEqual(Color(hex: 0xFFFFFF, alpha: 0.7), Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 0.7))
  }

  // MARK: - Tests for ColorHexProtocol

  //
  // static Color.makeWithHex(_:)
  //
  func testMakeWithHex() throws {
    XCTAssertEqual(Color.makeWithHex(0x000000), Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 1))
    XCTAssertEqual(Color.makeWithHex(0xFF0000), Color(.sRGB, red: 1, green: 0, blue: 0, opacity: 1))
    XCTAssertEqual(Color.makeWithHex(0x00FF00), Color(.sRGB, red: 0, green: 1, blue: 0, opacity: 1))
    XCTAssertEqual(Color.makeWithHex(0x0000FF), Color(.sRGB, red: 0, green: 0, blue: 1, opacity: 1))
    XCTAssertEqual(Color.makeWithHex(0xFFFFFF), Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 1))
  }

  //
  // static Color.makeWithHex(_:alpha:)
  //
  func testMakeWithHexAndAlpha() throws {
    XCTAssertEqual(Color.makeWithHex(0x000000, alpha: 0.3), Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.3))
    XCTAssertEqual(Color.makeWithHex(0xFF0000, alpha: 0.4), Color(.sRGB, red: 1, green: 0, blue: 0, opacity: 0.4))
    XCTAssertEqual(Color.makeWithHex(0x00FF00, alpha: 0.5), Color(.sRGB, red: 0, green: 1, blue: 0, opacity: 0.5))
    XCTAssertEqual(Color.makeWithHex(0x0000FF, alpha: 0.6), Color(.sRGB, red: 0, green: 0, blue: 1, opacity: 0.6))
    XCTAssertEqual(Color.makeWithHex(0xFFFFFF, alpha: 0.7), Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 0.7))
  }

  //
  // static Color.makeWithHex(_:)
  //
  func testMakeWithHexString() throws {
    XCTAssertEqual(Color.makeWithHex("#000000"), Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 1))
    XCTAssertEqual(Color.makeWithHex("FF0000"), Color(.sRGB, red: 1, green: 0, blue: 0, opacity: 1))
    XCTAssertEqual(Color.makeWithHex("0x00FF00"), Color(.sRGB, red: 0, green: 1, blue: 0, opacity: 1))
    XCTAssertEqual(Color.makeWithHex("0x0000FF"), Color(.sRGB, red: 0, green: 0, blue: 1, opacity: 1))
    XCTAssertEqual(Color.makeWithHex("#FFFFFF"), Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 1))
  }

  //
  // static Color.makeWithHex(_:alpha:)
  //
  func testMakeWithHexStringAndAlpha() throws {
    XCTAssertEqual(Color.makeWithHex("#000000", alpha: 0.3), Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.3))
    XCTAssertEqual(Color.makeWithHex("FF0000", alpha: 0.4), Color(.sRGB, red: 1, green: 0, blue: 0, opacity: 0.4))
    XCTAssertEqual(Color.makeWithHex("0x00FF00", alpha: 0.5), Color(.sRGB, red: 0, green: 1, blue: 0, opacity: 0.5))
    XCTAssertEqual(Color.makeWithHex("0x0000FF", alpha: 0.6), Color(.sRGB, red: 0, green: 0, blue: 1, opacity: 0.6))
    XCTAssertEqual(Color.makeWithHex("#FFFFFF", alpha: 0.7), Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 0.7))
  }

#if !os(watchOS)
  //
  // Color.getter:hex
  //
  func testToHex() {
    XCTAssertEqual(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 1).hex, 0x000000)
    XCTAssertEqual(Color(.sRGB, red: 1, green: 0, blue: 0, opacity: 1).hex, 0xFF0000)
    XCTAssertEqual(Color(.sRGB, red: 0, green: 1, blue: 0, opacity: 1).hex, 0x00FF00)
    XCTAssertEqual(Color(.sRGB, red: 0, green: 0, blue: 1, opacity: 1).hex, 0x0000FF)
    XCTAssertEqual(Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 1).hex, 0xFFFFFF)

    XCTAssertEqual(Color("invalid", bundle: .main).hex, 0x000000)
  }
#endif
}
