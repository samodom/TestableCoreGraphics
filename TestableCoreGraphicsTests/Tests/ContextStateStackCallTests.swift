//
//  ContextStateStackCallTests.swift
//  TestableCoreGraphics
//
//  Created by Sam Odom on 2/14/15.
//  Copyright (c) 2015 Swagger Soft. All rights reserved.
//

import UIKit
import XCTest

class ContextStateStackCallTests: XCTestCase {

    var context: CGContext!
    var callType: CGContextStackStateCall!
    var call: CGContextAuditedCall<CGContextStackStateCall>!

    override func setUp() {
        super.setUp()

        let size = CGSize(width: 200, height: 200)
        UIGraphicsBeginImageContext(size)
        context = UIGraphicsGetCurrentContext()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testSaveStateCall() {
        callType = .Save
        call = CGContextAuditedCall(type: callType, context: context)
        switch call.type {
        case .Save:
            break

        default:
            XCTFail("The provided call type should be used")
        }

        XCTAssertTrue(call.context === context, "The call should keep the context")
    }

    func testRestoreStateCall() {
        callType = .Restore
        call = CGContextAuditedCall(type: callType, context: context)
        switch call.type {
        case .Restore:
            break

        default:
            XCTFail("The provided call type should be used")
        }

        XCTAssertTrue(call.context === context, "The call should keep the context")
    }

}
