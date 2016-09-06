//
//  CoreGraphicsEquatability.swift
//  TestableCoreGraphics
//
//  Created by Sam Odom on 2/14/15.
//  Copyright (c) 2015 Swagger Soft. All rights reserved.
//

import CoreGraphics

extension CGInterpolationQuality: Equatable {

}

public func ==(lhs: CGInterpolationQuality, rhs: CGInterpolationQuality) -> Bool {
    return lhs.value == rhs.value
}


extension CGLineCap: Equatable {

}

public func ==(lhs: CGLineCap, rhs: CGLineCap) -> Bool {
    return lhs.value == rhs.value
}


extension CGLineJoin: Equatable {

}

public func ==(lhs: CGLineJoin, rhs: CGLineJoin) -> Bool {
    return lhs.value == rhs.value
}
