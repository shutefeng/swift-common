//
//  extension_Int.swift
//  demo-swift-common
//
//  Created by TT on 2017/1/2.
//  Copyright © 2017年 TT. All rights reserved.
//

import Foundation

extension Int {
    
    static func eRandom() -> Int { return Int(arc4random()) }
    
    static func eRandom(min: Int, max: Int) -> Int {
        let range = Range(uncheckedBounds: (min, max))
        return Int(arc4random_uniform(UInt32(range.upperBound - range.lowerBound))) + range.lowerBound
    }
}
