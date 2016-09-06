//
//  CGContextAuditTypes.swift
//  TestableCoreGraphics
//
//  Created by Sam Odom on 2/14/15.
//  Copyright (c) 2015 Swagger Soft. All rights reserved.
//

import CoreGraphics
import CoreGraphicsSwagger

public protocol CGContextAuditType {

}

public enum CGContextManagementCall: CGContextAuditType {
    case Flush
    case Synchronize
}

public enum CGContextStackStateCall: CGContextAuditType {
    case Save
    case Restore
}

public enum CGContextStateCall: CGContextAuditType {
    case Flatness(CGFloat)
    case InterpolationQuality(CGInterpolationQuality)
    case LineCap(CGLineCap)
    case LineDash(CGLineDash)
    case LineJoin(CGLineJoin)
    case LineWidth(CGFloat)
    case MiterLimit(CGFloat)
    case PatternPhase(CGSize)
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
}
