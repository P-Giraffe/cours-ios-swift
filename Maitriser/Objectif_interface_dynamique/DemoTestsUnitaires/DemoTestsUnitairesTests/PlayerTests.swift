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
    
    func testUpdateLevelAutomatically() {
        let player = Player()
        XCTAssertEqual(player.getLevel(), 1)
        player.changeScore(newScore: 15)
        XCTAssertEqual(player.getLevel(), 2)
        player.changeScore(newScore: 25)
        XCTAssertEqual(player.getLevel(), 3)
        player.changeScore(newScore: 12)
        XCTAssertEqual(player.getLevel(), 2)
        player.changeScore(newScore: 35)
        XCTAssertEqual(player.getLevel(), 4)
        player.changeScore(newScore: 350)
        XCTAssertEqual(player.getLevel(), 4)
    }    
}
