//
//  ContextStateCallTests.swift
//  TestableCoreGraphics
//
//  Created by Sam Odom on 2/14/15.
//  Copyright (c) 2015 Swagger Soft. All rights reserved.
//

import UIKit
import XCTest
import CoreGraphicsSwagger

class ContextStateCallTests: XCTestCase {

    var context: CGContext!
    var callType: CGContextStateCall!
    var call: CGContextAuditedCall<CGContextStateCall>!

    override func setUp() {
        super.setUp()

        let size = CGSize(width: 200, height: 200)
        UIGraphicsBeginImageContext(size)
        context = UIGraphicsGetCurrentContext()
    }

    override func tearDown() {
        super.tearDown()
    }

    private func makeCall() {
        call = CGContextAuditedCall(type: callType, context: context)
    }

    func testFlatnessCall() {
        callType = .Flatness(14.42)
        makeCall()
        switch call.type {
        case .Flatness(let flatness):
            XCTAssertEqual(flatness, 14.42, "The flatness setting audit type should remember the flatness value")

        default:
            XCTFail("The provided call type should be used")
        }

        XCTAssertTrue(call.context === context, "The call should keep the context")
    }

    func testInterpolationQualityCall() {
        callType = .InterpolationQuality(kCGInterpolationMedium)
        makeCall()
        switch call.type {
        case .InterpolationQuality(let quality):
            XCTAssertEqual(quality, kCGInterpolationMedium, "The interpolation quality setting audit type should remember the quality value")

        default:
            XCTFail("The provided call type should be used")
        }

        XCTAssertTrue(call.context === context, "The call should keep the context")
    }

    func testLineCapCall() {
        callType = .LineCap(kCGLineCapRound)
        makeCall()
        switch call.type {
        case .LineCap(let lineCap):
            XCTAssertEqual(lineCap, kCGLineCapRound, "The line cap setting audit type should remember the line cap value")

        default:
            XCTFail("The provided call type should be used")
        }

        XCTAssertTrue(call.context === context, "The call should keep the context")
    }

    func testLineDashCall() {
        let pattern = [2, 4, 1, 5] as CGLineDashPattern
        let dash = CGLineDash(phase: 1, pattern: pattern)
        callType = .LineDash(dash)
        makeCall()
        switch call.type {
        case .LineDash(let lineDash):
            XCTAssertEqual(lineDash.phase, 1, "The line dash setting audit type should remember the line dash value")
            XCTAssertEqual(lineDash.pattern, pattern, "The line dash setting audit type should remember the line dash value")

        default:
            XCTFail("The provided call type should be used")
        }

        XCTAssertTrue(call.context === context, "The call should keep the context")
    }

    func testLineJoinCall() {
        let join = kCGLineJoinMiter
        callType = .LineJoin(join)
        makeCall()
        switch call.type {
        case .LineJoin(let lineJoin):
            XCTAssertEqual(lineJoin, join, "The line join setting audit type should remember the line join value")

        default:
            XCTFail("The provided call type should be used")
        }
    }

    func testLineWidthCall() {
        callType = .LineWidth(14.42)
        makeCall()
        switch call.type {
        case .LineWidth(let lineWidth):
            XCTAssertEqual(lineWidth, 14.42, "The line width setting audit type should remember the line width value")

        default:
            XCTFail("The provided call type should be used")
        }
    }

    func testMiterLimitCall() {
        callType = .MiterLimit(14.42)
        makeCall()
        switch call.type {
        case .MiterLimit(let miterLimit):
            XCTAssertEqual(miterLimit, 14.42, "The miter limit setting audit type should remember the miter limit value")

        default:
            XCTFail("The provided call type should be used")
        }
    }

    func testPatternPhaseCall() {
        let phase = CGSize(width: 24.2, height: 42.4)
        callType = .PatternPhase(phase)
        makeCall()
        switch call.type {
        case .PatternPhase(let patternPhase):
            XCTAssertEqual(patternPhase, phase, "The pattern phase setting audit type should remember the pattern phase value")

        default:
            XCTFail("The provided call type should be used")
        }
    }

    func testFillPatternCall() {
        let pattern = CGPatternCreate(<#info: UnsafeMutablePointer<Void>#>, <#bounds: CGRect#>, <#matrix: CGAffineTransform#>, <#xStep: CGFloat#>, <#yStep: CGFloat#>, <#tiling: CGPatternTiling#>, <#isColored: Bool#>, <#callbacks: UnsafePointer<CGPatternCallbacks>#>)
        callType = .FillPattern(pattern)
        makeCall()
        switch call.type {
        case .MiterLimit(let miterLimit):
            XCTAssertEqual(miterLimit, 14.42, "The miter limit setting audit type should remember the miter limit value")

        default:
            XCTFail("The provided call type should be used")
        }
    }


    /*
case FillPattern
case RenderingIntent
case ShouldAntialias
case StrokePattern
case BlendMode
case AllowsAntialiasing
case AllowsFontSmoothing
case ShouldSmoothFonts
case AllowsFontSubpixelPositioning
case ShouldSubpixelPositionFonts
case AllowsFontSubpixelQuantization
case ShouldSubpixelQuantizeFonts
*/
}
