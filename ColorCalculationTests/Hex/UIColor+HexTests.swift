//
//  UIColor+HexTests.swift
//  ColorCalculationTests
//
//  Created by Kjuly on 12/12/2023.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import XCTest
@testable import ColorCalculation

#if canImport(UIKit)
import UIKit

final class UIColor_HexTests: XCTestCase {

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
    XCTAssertEqual(UIColor(hex: 0x000000), UIColor(red: 0, green: 0, blue: 0, alpha: 1))
    XCTAssertEqual(UIColor(hex: 0xFF0000), UIColor(red: 1, green: 0, blue: 0, alpha: 1))
    XCTAssertEqual(UIColor(hex: 0x00FF00), UIColor(red: 0, green: 1, blue: 0, alpha: 1))
    XCTAssertEqual(UIColor(hex: 0x0000FF), UIColor(red: 0, green: 0, blue: 1, alpha: 1))
    XCTAssertEqual(UIColor(hex: 0xFFFFFF), UIColor(red: 1, green: 1, blue: 1, alpha: 1))

    XCTAssertEqual(UIColor(hex: 0x000000, alpha: 0.3), UIColor(red: 0, green: 0, blue: 0, alpha: 0.3))
    XCTAssertEqual(UIColor(hex: 0xFF0000, alpha: 0.4), UIColor(red: 1, green: 0, blue: 0, alpha: 0.4))
    XCTAssertEqual(UIColor(hex: 0x00FF00, alpha: 0.5), UIColor(red: 0, green: 1, blue: 0, alpha: 0.5))
    XCTAssertEqual(UIColor(hex: 0x0000FF, alpha: 0.6), UIColor(red: 0, green: 0, blue: 1, alpha: 0.6))
    XCTAssertEqual(UIColor(hex: 0xFFFFFF, alpha: 0.7), UIColor(red: 1, green: 1, blue: 1, alpha: 0.7))
  }

  // MARK: - Tests for ColorHexProtocol

  //
  // static UIColor.makeWithHex(_:)
  //
  func testMakeWithHex() throws {
    XCTAssertEqual(UIColor.makeWithHex(0x000000), UIColor(red: 0, green: 0, blue: 0, alpha: 1))
    XCTAssertEqual(UIColor.makeWithHex(0xFF0000), UIColor(red: 1, green: 0, blue: 0, alpha: 1))
    XCTAssertEqual(UIColor.makeWithHex(0x00FF00), UIColor(red: 0, green: 1, blue: 0, alpha: 1))
    XCTAssertEqual(UIColor.makeWithHex(0x0000FF), UIColor(red: 0, green: 0, blue: 1, alpha: 1))
    XCTAssertEqual(UIColor.makeWithHex(0xFFFFFF), UIColor(red: 1, green: 1, blue: 1, alpha: 1))
  }

  //
  // static UIColor.makeWithHex(_:alpha:)
  //
  func testMakeWithHexAndAlpha() throws {
    XCTAssertEqual(UIColor.makeWithHex(0x000000, alpha: 0.3), UIColor(red: 0, green: 0, blue: 0, alpha: 0.3))
    XCTAssertEqual(UIColor.makeWithHex(0xFF0000, alpha: 0.4), UIColor(red: 1, green: 0, blue: 0, alpha: 0.4))
    XCTAssertEqual(UIColor.makeWithHex(0x00FF00, alpha: 0.5), UIColor(red: 0, green: 1, blue: 0, alpha: 0.5))
    XCTAssertEqual(UIColor.makeWithHex(0x0000FF, alpha: 0.6), UIColor(red: 0, green: 0, blue: 1, alpha: 0.6))
    XCTAssertEqual(UIColor.makeWithHex(0xFFFFFF, alpha: 0.7), UIColor(red: 1, green: 1, blue: 1, alpha: 0.7))
  }

  //
  // static UIColor.makeWithHex(_:)
  //
  func testMakeWithHexString() throws {
    XCTAssertEqual(UIColor.makeWithHex("#000000"), UIColor(red: 0, green: 0, blue: 0, alpha: 1))
    XCTAssertEqual(UIColor.makeWithHex("FF0000"), UIColor(red: 1, green: 0, blue: 0, alpha: 1))
    XCTAssertEqual(UIColor.makeWithHex("0x00FF00"), UIColor(red: 0, green: 1, blue: 0, alpha: 1))
    XCTAssertEqual(UIColor.makeWithHex("0x0000FF"), UIColor(red: 0, green: 0, blue: 1, alpha: 1))
    XCTAssertEqual(UIColor.makeWithHex("#FFFFFF"), UIColor(red: 1, green: 1, blue: 1, alpha: 1))
  }

  //
  // static UIColor.makeWithHex(_:alpha:)
  //
  func testMakeWithHexStringAndAlpha() throws {
    XCTAssertEqual(UIColor.makeWithHex("#000000", alpha: 0.3), UIColor(red: 0, green: 0, blue: 0, alpha: 0.3))
    XCTAssertEqual(UIColor.makeWithHex("FF0000", alpha: 0.4), UIColor(red: 1, green: 0, blue: 0, alpha: 0.4))
    XCTAssertEqual(UIColor.makeWithHex("0x00FF00", alpha: 0.5), UIColor(red: 0, green: 1, blue: 0, alpha: 0.5))
    XCTAssertEqual(UIColor.makeWithHex("0x0000FF", alpha: 0.6), UIColor(red: 0, green: 0, blue: 1, alpha: 0.6))
    XCTAssertEqual(UIColor.makeWithHex("#FFFFFF", alpha: 0.7), UIColor(red: 1, green: 1, blue: 1, alpha: 0.7))
  }

  #if !os(watchOS)
  //
  // UIColor.getter:hex
  //
  func testToHex() {
    XCTAssertEqual(UIColor(red: 0, green: 0, blue: 0, alpha: 1).hex, 0x000000)
    XCTAssertEqual(UIColor(red: 1, green: 0, blue: 0, alpha: 1).hex, 0xFF0000)
    XCTAssertEqual(UIColor(red: 0, green: 1, blue: 0, alpha: 1).hex, 0x00FF00)
    XCTAssertEqual(UIColor(red: 0, green: 0, blue: 1, alpha: 1).hex, 0x0000FF)
    XCTAssertEqual(UIColor(red: 1, green: 1, blue: 1, alpha: 1).hex, 0xFFFFFF)

    XCTAssertEqual(UIColor().hex, 0x000000)
  }
  #endif

  // MARK: - Tests for UIColorObjC

  //
  // static UIColorObjC.makeWithHex(_:)
  //
  func testUIColorObjCMakeWithHex() throws {
    XCTAssertEqual(UIColorObjC.makeWithHex(0x000000), UIColor(red: 0, green: 0, blue: 0, alpha: 1))
    XCTAssertEqual(UIColorObjC.makeWithHex(0xFF0000), UIColor(red: 1, green: 0, blue: 0, alpha: 1))
    XCTAssertEqual(UIColorObjC.makeWithHex(0x00FF00), UIColor(red: 0, green: 1, blue: 0, alpha: 1))
    XCTAssertEqual(UIColorObjC.makeWithHex(0x0000FF), UIColor(red: 0, green: 0, blue: 1, alpha: 1))
    XCTAssertEqual(UIColorObjC.makeWithHex(0xFFFFFF), UIColor(red: 1, green: 1, blue: 1, alpha: 1))
  }

  //
  // static UIColorObjC.makeWithHex(_:alpha:)
  //
  func testUIColorObjCMakeWithHexAndAlpha() throws {
    XCTAssertEqual(UIColorObjC.makeWithHex(0x000000, alpha: 0.3), UIColor(red: 0, green: 0, blue: 0, alpha: 0.3))
    XCTAssertEqual(UIColorObjC.makeWithHex(0xFF0000, alpha: 0.4), UIColor(red: 1, green: 0, blue: 0, alpha: 0.4))
    XCTAssertEqual(UIColorObjC.makeWithHex(0x00FF00, alpha: 0.5), UIColor(red: 0, green: 1, blue: 0, alpha: 0.5))
    XCTAssertEqual(UIColorObjC.makeWithHex(0x0000FF, alpha: 0.6), UIColor(red: 0, green: 0, blue: 1, alpha: 0.6))
    XCTAssertEqual(UIColorObjC.makeWithHex(0xFFFFFF, alpha: 0.7), UIColor(red: 1, green: 1, blue: 1, alpha: 0.7))
  }
}
#endif
