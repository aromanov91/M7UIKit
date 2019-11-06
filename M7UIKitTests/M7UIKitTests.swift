//
//  M7UIKitTests.swift
//  M7UIKitTests
//
//  Created by Aleksandr Romanov on 19.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import XCTest
@testable import M7UIKit

class M7UIKitTests: XCTestCase {
    
    var m7UIKit: M7UIKit!

    override func setUp() {
        m7UIKit = M7UIKit()
    }

    func testAdd() {
        XCTAssertEqual(m7UIKit.add(a: 1, b: 1), 2)
    }
    
    func testSub() {
        XCTAssertEqual(m7UIKit.sub(a: 2, b: 1), 1)
    }



}
