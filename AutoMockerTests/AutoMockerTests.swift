//
//  AutoMockableTests.swift
//  AutoMockableTests
//
//  Created by Vincent on 16/07/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import XCTest
import AutoMocker

fileprivate struct MyData {
    let bool: Bool
    let string: String
    let integers: [Int]
}

class AutoMockableTests: XCTestCase {

    func testMockingBuildsSuccessfully() {
        _ = mock(MyData.init)
    }
}
