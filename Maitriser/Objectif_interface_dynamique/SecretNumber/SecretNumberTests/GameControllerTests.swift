//
//  GameControllerTests.swift
//  GameControllerTests
//
//  Created by Maxime Britto on 08/12/2017.
//  Copyright © 2017 Maxime Britto. All rights reserved.
//

import XCTest
@testable import SecretNumber

class GameControllerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGameStatus() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let gameController = GameController()
        XCTAssertFalse(gameController.isGameInProgress)
        gameController.startNewGame(withSecretNumber: 40)
        XCTAssertTrue(gameController.isGameInProgress)
        gameController.checkGuessedValue(20)
        XCTAssertTrue(gameController.isGameInProgress)
        gameController.checkGuessedValue(60)
        XCTAssertTrue(gameController.isGameInProgress)
        gameController.checkGuessedValue(40)
        XCTAssertFalse(gameController.isGameInProgress)
    }
    
    func testBoundaries() {
        let gameController = GameController()
        gameController.startNewGame(withSecretNumber: 60)
        XCTAssertEqual(GameController.MIN_VALUE, gameController.lowBoundary)
        XCTAssertEqual(GameController.MAX_VALUE, gameController.highBoundary)
        
        gameController.checkGuessedValue(30)
        XCTAssertEqual(30, gameController.lowBoundary)
        XCTAssertEqual(GameController.MAX_VALUE, gameController.highBoundary)
        
        gameController.checkGuessedValue(70)
        XCTAssertEqual(30, gameController.lowBoundary)
        XCTAssertEqual(70, gameController.highBoundary)
        
        gameController.checkGuessedValue(55)
        XCTAssertEqual(55, gameController.lowBoundary)
        XCTAssertEqual(70, gameController.highBoundary)
        
        gameController.checkGuessedValue(65)
        XCTAssertEqual(55, gameController.lowBoundary)
        XCTAssertEqual(65, gameController.highBoundary)
        
        gameController.startNewGame()
        XCTAssertEqual(GameController.MIN_VALUE, gameController.lowBoundary, "After a new game, boundaries should have been reinitialized")
        XCTAssertEqual(GameController.MAX_VALUE, gameController.highBoundary, "After a new game, boundaries should have been reinitialized")
    }
    
}






