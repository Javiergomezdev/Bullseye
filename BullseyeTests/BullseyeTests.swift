//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Javier Gomez on 15/6/22.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {

    
    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
    }
    
    override func tearDownWithError() throws {
        game = nil
    }
    
    func testExample() throws {
        XCTAssertEqual(game.point(sliderValue: 50), 999)
    }
    
}
