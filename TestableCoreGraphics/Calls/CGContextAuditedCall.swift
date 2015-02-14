//
//  CGContextAuditedCall.swift
//  TestableCoreGraphics
//
//  Created by Sam Odom on 2/14/15.
//  Copyright (c) 2015 Swagger Soft. All rights reserved.
//

import CoreGraphics

public struct CGContextAuditedCall<A: CGContextAuditType> {
    public let context: CGContext
    public let type: A
    public init(type: A, context: CGContext) {
        self.context = context
        self.type = type
    }
}

