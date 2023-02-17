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
    
    func test_gameScore_WhenPlayer1Advantage() {
        let score = gameScore.getPlayerPoints(player1Points: 4, player2Points: 3)
        XCTAssertEqual("Player1 Advantage", score)
    }
    
    func test_gameScore_WhenPlayer2Advantage() {
        let score = gameScore.getPlayerPoints(player1Points: 3, player2Points: 4)
        XCTAssertEqual("Player2 Advantage", score)
    }
    
    func test_gameScore_WhenPlayerWinWithoutAdvantage() {
        let score = gameScore.getPlayerPoints(player1Points: 4, player2Points: 4)
        XCTAssertEqual("Deuce", score)
    }
    
    func test_gameScore_WhenPlayer1WinWithAdvantage() {
        let score = gameScore.getPlayerPoints(player1Points: 5, player2Points: 3)
        XCTAssertEqual("Player1 Wins", score)
    }
    
    func test_gameScore_WhenPlayer2WinWithAdvantage() {
        let score = gameScore.getPlayerPoints(player1Points: 3, player2Points: 5)
        XCTAssertEqual("Player2 Wins", score)
    }
    
    func test_gameScore_WhenPlayer1Score4Points_Player2Score1Point() {
        let score = gameScore.getPlayerPoints(player1Points: 4, player2Points: 1)
        XCTAssertEqual("Player1 Wins", score)
    }
    
    func test_gameScore_WhenBothPlayersMoreThan4Points_Player1HasAdvantage() {
        let score = gameScore.getPlayerPoints(player1Points: 6, player2Points: 5)
        XCTAssertEqual("Player1 Advantage", score)
    }
    
    func test_gameScore_WhenBothPlayersMoreThan4Points_Player1HasWinWithAdvantage() {
        let score = gameScore.getPlayerPoints(player1Points: 6, player2Points: 4)
        XCTAssertEqual("Player1 Wins", score)
    }
    
    func test_gameScore_WhenBothPlayersMoreThan4Points_Deuce() {
        let score = gameScore.getPlayerPoints(player1Points: 8, player2Points: 8)
        XCTAssertEqual("Deuce", score)
    }
}
