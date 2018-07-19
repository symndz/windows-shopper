//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by training on 19.07.2018.
//  Copyright © 2018 Developers. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {
    
    override func setUp() {
        print("setUp")
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        print("tearDown")
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        print("testExample")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testGetHours() {
        // 250.53/15.50 16.1632258065
        print("test case 1")
        XCTAssert(WageModel.getHours(forWage: 25, andPrice: 100) == 4)
        XCTAssert(WageModel.getHours(forWage: 15.50, andPrice: 250.53) == 17)
        XCTAssert(WageModel.getHours(forWage: 15.50, andPrice: 250.53) != 16)
    }
    
    func testPerformanceExample() {
        print("performanceTest")
        
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
