//
//  NSColor+HexTests.swift
//  ColorCalculationTests
//
//  Created by Kjuly on 12/12/2023.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import XCTest
@testable import ColorCalculation

#if canImport(AppKit)
import AppKit

final class NSColor_HexTests: XCTestCase {

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
    XCTAssertEqual(NSColor(hex: 0x000000), NSColor(red: 0, green: 0, blue: 0, alpha: 1))
    XCTAssertEqual(NSColor(hex: 0xFF0000), NSColor(red: 1, green: 0, blue: 0, alpha: 1))
    XCTAssertEqual(NSColor(hex: 0x00FF00), NSColor(red: 0, green: 1, blue: 0, alpha: 1))
    XCTAssertEqual(NSColor(hex: 0x0000FF), NSColor(red: 0, green: 0, blue: 1, alpha: 1))
    XCTAssertEqual(NSColor(hex: 0xFFFFFF), NSColor(red: 1, green: 1, blue: 1, alpha: 1))

    XCTAssertEqual(NSColor(hex: 0x000000, alpha: 0.3), NSColor(red: 0, green: 0, blue: 0, alpha: 0.3))
    XCTAssertEqual(NSColor(hex: 0xFF0000, alpha: 0.4), NSColor(red: 1, green: 0, blue: 0, alpha: 0.4))
    XCTAssertEqual(NSColor(hex: 0x00FF00, alpha: 0.5), NSColor(red: 0, green: 1, blue: 0, alpha: 0.5))
    XCTAssertEqual(NSColor(hex: 0x0000FF, alpha: 0.6), NSColor(red: 0, green: 0, blue: 1, alpha: 0.6))
    XCTAssertEqual(NSColor(hex: 0xFFFFFF, alpha: 0.7), NSColor(red: 1, green: 1, blue: 1, alpha: 0.7))
  }

  // MARK: - Tests for ColorHexProtocol

  //
  // static NSColor.makeWithHex(_:)
  //
  func testMakeWithHex() throws {
    XCTAssertEqual(NSColor.makeWithHex(0x000000), NSColor(red: 0, green: 0, blue: 0, alpha: 1))
    XCTAssertEqual(NSColor.makeWithHex(0xFF0000), NSColor(red: 1, green: 0, blue: 0, alpha: 1))
    XCTAssertEqual(NSColor.makeWithHex(0x00FF00), NSColor(red: 0, green: 1, blue: 0, alpha: 1))
    XCTAssertEqual(NSColor.makeWithHex(0x0000FF), NSColor(red: 0, green: 0, blue: 1, alpha: 1))
    XCTAssertEqual(NSColor.makeWithHex(0xFFFFFF), NSColor(red: 1, green: 1, blue: 1, alpha: 1))
  }

  //
  // static NSColor.makeWithHex(_:alpha:)
  //
  func testMakeWithHexAndAlpha() throws {
    XCTAssertEqual(NSColor.makeWithHex(0x000000, alpha: 0.3), NSColor(red: 0, green: 0, blue: 0, alpha: 0.3))
    XCTAssertEqual(NSColor.makeWithHex(0xFF0000, alpha: 0.4), NSColor(red: 1, green: 0, blue: 0, alpha: 0.4))
    XCTAssertEqual(NSColor.makeWithHex(0x00FF00, alpha: 0.5), NSColor(red: 0, green: 1, blue: 0, alpha: 0.5))
    XCTAssertEqual(NSColor.makeWithHex(0x0000FF, alpha: 0.6), NSColor(red: 0, green: 0, blue: 1, alpha: 0.6))
    XCTAssertEqual(NSColor.makeWithHex(0xFFFFFF, alpha: 0.7), NSColor(red: 1, green: 1, blue: 1, alpha: 0.7))
  }

  //
  // static NSColor.makeWithHex(_:)
  //
  func testMakeWithHexString() throws {
    XCTAssertEqual(NSColor.makeWithHex("#000000"), NSColor(red: 0, green: 0, blue: 0, alpha: 1))
    XCTAssertEqual(NSColor.makeWithHex("FF0000"), NSColor(red: 1, green: 0, blue: 0, alpha: 1))
    XCTAssertEqual(NSColor.makeWithHex("0x00FF00"), NSColor(red: 0, green: 1, blue: 0, alpha: 1))
    XCTAssertEqual(NSColor.makeWithHex("0x0000FF"), NSColor(red: 0, green: 0, blue: 1, alpha: 1))
    XCTAssertEqual(NSColor.makeWithHex("#FFFFFF"), NSColor(red: 1, green: 1, blue: 1, alpha: 1))
  }

  //
  // static NSColor.makeWithHex(_:alpha:)
  //
  func testMakeWithHexStringAndAlpha() throws {
    XCTAssertEqual(NSColor.makeWithHex("#000000", alpha: 0.3), NSColor(red: 0, green: 0, blue: 0, alpha: 0.3))
    XCTAssertEqual(NSColor.makeWithHex("FF0000", alpha: 0.4), NSColor(red: 1, green: 0, blue: 0, alpha: 0.4))
    XCTAssertEqual(NSColor.makeWithHex("0x00FF00", alpha: 0.5), NSColor(red: 0, green: 1, blue: 0, alpha: 0.5))
    XCTAssertEqual(NSColor.makeWithHex("0x0000FF", alpha: 0.6), NSColor(red: 0, green: 0, blue: 1, alpha: 0.6))
    XCTAssertEqual(NSColor.makeWithHex("#FFFFFF", alpha: 0.7), NSColor(red: 1, green: 1, blue: 1, alpha: 0.7))
  }

  //
  // NSColor.getter:hex
  //
  func testToHex() {
    XCTAssertEqual(NSColor(red: 0, green: 0, blue: 0, alpha: 1).hex, 0x000000)
    XCTAssertEqual(NSColor(red: 1, green: 0, blue: 0, alpha: 1).hex, 0xFF0000)
    XCTAssertEqual(NSColor(red: 0, green: 1, blue: 0, alpha: 1).hex, 0x00FF00)
    XCTAssertEqual(NSColor(red: 0, green: 0, blue: 1, alpha: 1).hex, 0x0000FF)
    XCTAssertEqual(NSColor(red: 1, green: 1, blue: 1, alpha: 1).hex, 0xFFFFFF)
  }
}
#endif
