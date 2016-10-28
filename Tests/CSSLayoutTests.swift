//
//  CSSLayoutTests.swift
//  CSSLayoutTests
//
//  Created by Matias Cudich on 10/11/16.
//  Copyright © 2016 Matias Cudich. All rights reserved.
//

import XCTest
@testable import CSSLayout

class CSSLayoutTests: XCTestCase {
  func testSimpleLayout() {
    let parent = CSSNode()
    parent.flexDirection = CSSFlexDirectionRow
    parent.size = CSSSize(width: 414, height: Float.nan)

    let image = CSSNode()
    image.size = CSSSize(width: 64, height: 64)

    let text = CSSNode()
    text.flex = 1
    text.isTextNode = true
    text.measure = { node, width, widthMode, height, heightMode in
      return CSSSize(width: width, height: 100)
    }

    parent.children = [image, text]

    let layout = parent.layout()
    XCTAssertEqual(414, layout.frame.width)
    XCTAssertEqual(100, layout.frame.height)
    XCTAssertEqual(64, layout.children[0].frame.width)
    XCTAssertEqual(64, layout.children[0].frame.height)
    XCTAssertEqual(350, layout.children[1].frame.width)
    XCTAssertEqual(100, layout.children[1].frame.height)
  }
}
