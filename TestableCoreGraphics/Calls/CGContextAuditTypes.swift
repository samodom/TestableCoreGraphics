//
//  CGContextAuditTypes.swift
//  TestableCoreGraphics
//
//  Created by Sam Odom on 2/14/15.
//  Copyright (c) 2015 Swagger Soft. All rights reserved.
//

import CoreGraphics

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
