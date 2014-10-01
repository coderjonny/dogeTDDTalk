//
//  dogeAgeTests.swift
//  dogeAgeTests
//
//  Created by jonny on 9/23/14.
//  Copyright (c) 2014 jonny kang. All rights reserved.
//

import UIKit
import XCTest

class TestingDoge: XCTestCase {
    let doge = Doge()
    
    func testDogeFetch() {
        doge.fetch()
        assert(doge.fetched, "doge should fetch")
    }
    
    func testDogeAgeCalc() {
        XCTAssertEqual(doge.dogeAge(4), "Your 28 year old 🐶 is awesome",
            "should give back in doge years ")
    }
    
    func testBark() {
        XCTAssertEqual(doge.bark(), "woof",
            "should woof back at me")
    }

}

