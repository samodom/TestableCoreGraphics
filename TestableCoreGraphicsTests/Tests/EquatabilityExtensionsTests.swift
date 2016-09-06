//
//  EquatabilityExtensionsTests.swift
//  TestableCoreGraphics
//
//  Created by Sam Odom on 2/14/15.
//  Copyright (c) 2015 Swagger Soft. All rights reserved.
//

import UIKit
import XCTest

class EquatabilityExtensionsTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }


    func testCGInterpolationQualityEquatability() {
        let leftValues = possibleInterpolationQualityValues()
        let rightValues = possibleInterpolationQualityValues()
        var i = 0, j = 0
        for left in leftValues {
            for right in rightValues {
                if i == j {
                    XCTAssertEqual(left, right, "The two values should be considered equal")
                }
                else {
                    XCTAssertNotEqual(left, right, "The two values should not be equal")
                }
                j++
            }
            j = 0
            i++
        }
    }

    func testCGLineCapEquatability() {
        let leftValues = possibleLineCapValues()
        let rightValues = possibleLineCapValues()
        var i = 0, j = 0
        for left in leftValues {
            for right in rightValues {
                if i == j {
                    XCTAssertEqual(left, right, "The two values should be considered equal")
                }
                else {
                    XCTAssertNotEqual(left, right, "The two values should not be equal")
                }
                j++
            }
            j = 0
            i++
        }
    }

}

private func possibleInterpolationQualityValues() -> [CGInterpolationQuality] {
    return [kCGInterpolationDefault,
        kCGInterpolationNone,
        kCGInterpolationLow,
        kCGInterpolationMedium,
        kCGInterpolationHigh]
}

private func possibleLineCapValues() -> [CGLineCap]{
    return [kCGLineCapButt, kCGLineCapRound, kCGLineCapSquare]
}
