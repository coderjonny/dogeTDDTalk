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

    var doge = Doge()
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testDogeFetch() {
        doge.fetch()
        assert(doge.fetched, "doge should fetch")
    }
    
    
    func testPerformanceExample(){
    // This is an example of a performance test case.

    }
    
    func testDogeAgeCalc() {
        XCTAssertEqual(doge.dogeAge(4), "Your 28 year old 🐶 is awesome",
            "should give back in doge years ")

//        self.measureBlock() {
//            for var i = 10; i < 100; i++ {
//                print(self.doge.dogeAge(i))
//            }
//        }
    }
    
    func testBark() {
        XCTAssertEqual(doge.bark(), "woof",
            "should woof back at me")
    }
    
    func test_mapBones() {
        XCTAssertEqual( doge.mapBones(["what", "black"]), ["whatwoof", "blackwoof"], "should pass")
    }


}

