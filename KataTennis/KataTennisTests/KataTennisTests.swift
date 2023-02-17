//
//  KataTennisTests.swift
//  KataTennisTests
//
//  Created by Puneet on 17/02/23.
//

import XCTest
@testable import KataTennis

class KataTennisTests: XCTestCase {
  
    let gameScore = GameScore()
  
    func test_gameStart_initialScoreShouldBeLove() {
        let score = gameScore.getPlayerPoints(player1Points: 0, player2Points: 0)
        XCTAssertEqual("Love All", score)
    }

}
