//
//  ContextManagementCallTests.swift
//  TestableCoreGraphics
//
//  Created by Sam Odom on 2/14/15.
//  Copyright (c) 2015 Swagger Soft. All rights reserved.
//

import UIKit
import XCTest

class ContextManagementCallTests: XCTestCase {

    var context: CGContext!
    var callType: CGContextManagementCall!
    var call: CGContextAuditedCall<CGContextManagementCall>!

    override func setUp() {
        super.setUp()

        let size = CGSize(width: 200, height: 200)
        UIGraphicsBeginImageContext(size)
        context = UIGraphicsGetCurrentContext()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testFlushCall() {
        callType = .Flush
        call = CGContextAuditedCall(type: callType, context: context)
        switch call.type {
        case .Flush:
            break

        default:
            XCTFail("The provided call type should be used")
        }

        XCTAssertTrue(call.context === context, "The call should keep the context")
    }

    func testSynchronizedCall() {
        callType = .Synchronize
        call = CGContextAuditedCall(type: callType, context: context)
        switch call.type {
        case .Synchronize:
            break

        default:
            XCTFail("The provided call type should be used")
        }

        XCTAssertTrue(call.context === context, "The call should keep the context")
    }
    
}
