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
    
    func test_gameScore_WhenPlayer1ScoreFirstPoint_Player2ScoreStillLove() {
        let score = gameScore.getPlayerPoints(player1Points: 1, player2Points: 0)
        XCTAssertEqual("Fifteen - Love", score)
    }
    
    func test_gameScore_WhenPlayer1ScoreFirstPoint_Player2ScoreFirstPoint() {
        let score = gameScore.getPlayerPoints(player1Points: 1, player2Points: 1)
        XCTAssertEqual("Fifteen All", score)
    }
    
    func test_gameScore_WhenPlayer1ScoreSecondPoint_Player2ScoreFirstPoint() {
        let score = gameScore.getPlayerPoints(player1Points: 2, player2Points: 1)
        XCTAssertEqual("Thirty - Fifteen", score)
    }
 
    func test_gameScore_WhenPlayer1ScoreSecondPoint_Player2ScoreSecondPoint() {
        let score = gameScore.getPlayerPoints(player1Points: 2, player2Points: 2)
        XCTAssertEqual("Thirty All", score)
    }

    func test_gameScore_WhenPlayer1ScoreThirdPoint_Player2ScoreSecondPoint() {
        let score = gameScore.getPlayerPoints(player1Points: 3, player2Points: 2)
        XCTAssertEqual("Forty - Thirty", score)
    }
    
    func test_gameScore_WhenPlayer1Player2ScoreThirdPoints() {
        let score = gameScore.getPlayerPoints(player1Points: 3, player2Points: 3)
        XCTAssertEqual("Deuce", score)
    }
}
