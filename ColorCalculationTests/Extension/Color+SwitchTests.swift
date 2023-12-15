//
//  Color+SwitchTests.swift
//  ColorCalculationTests
//
//  Created by Kjuly on 12/12/2023.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import XCTest
import SwiftUI
@testable import ColorCalculation

#if canImport(AppKit)
import AppKit
#endif

#if canImport(UIKit)
import UIKit
#endif

final class Color_SwitchTests: XCTestCase {

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

#if canImport(AppKit)
  //
  // Color.getter:toNSColor
  // NSColor.getter:.toColor
  //
  func testColorSwitchBetweenColorAndNSColor() throws {
    let color = Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 1)
    let nsColor = NSColor(red: 0, green: 0, blue: 0, alpha: 1)
    XCTAssertEqual(color.toNSColor.hex, nsColor.hex)
    XCTAssertEqual(nsColor.toColor.hex, color.hex)
  }
#endif

#if canImport(UIKit) && !os(watchOS)
  //
  // Color.getter:toUIColor
  // UIColor.getter:.toColor
  //
  func testColorSwitchBetweenColorAndUIColor() throws {
    let color = Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 1)
    let uiColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    XCTAssertEqual(color.toUIColor.hex, uiColor.hex)
    XCTAssertEqual(uiColor.toColor.hex, color.hex)
  }
#endif
}
