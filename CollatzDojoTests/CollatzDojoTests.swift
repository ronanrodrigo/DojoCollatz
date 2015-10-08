//
//  CollatzDojoTests.swift
//  CollatzDojoTests
//
//  Created by Ronan Rodrigo Nunes on 07/10/15.
//
//

import XCTest

class CollatzDojoTests: XCTestCase {
    func testShouldReturnCorrectSequence() {
        let maxIndex = CollatzDojo.elaborarSequencia()
        
        XCTAssertEqual(837799, maxIndex)
    }
    
}

class CollatzDojo {
    class func elaborarSequencia() -> NSInteger {
        var maxCount : NSInteger = 0
        var maxIndex : NSInteger = 0
        for index in 1...1000000 {
            let count = countCollatz(index)
            if(maxCount < count) {
                maxIndex = index
                maxCount = count
            }
        }
        return maxIndex
    }
    
    class func countCollatz(sequenceStart: Int) -> NSInteger {
        
        var count : NSInteger = 1
        var nextNumber: Int = sequenceStart
        
        while nextNumber != 1 {
            nextNumber = nextNumber % 2 == 0 ? nextNumber / 2 : nextNumber * 3 + 1
            count++
        }
        
        return count
    }
    
}