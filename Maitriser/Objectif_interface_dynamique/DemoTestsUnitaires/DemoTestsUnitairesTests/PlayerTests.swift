//
//  PlayerTests.swift
//  DemoTestsUnitairesTests
//
//  Created by Maxime Britto on 20/12/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import XCTest
@testable import DemoTestsUnitaires

class PlayerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let player = Player()
        XCTAssertEqual(player.getLevel(), 1)
        player.changeScore(newScore: 15)
        XCTAssertEqual(player.getLevel(), 2)
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
