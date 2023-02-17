
import XCTest
@testable import KataTennis

class KataTennisTests: XCTestCase {
  
    let viewModel = GameScoreViewModel()
  
    func test_gameStart_initialScoreShouldBeLove() {
        viewModel.callFuncToGetPoints(player1Point: 0, player2Point: 0)
        let score = viewModel.getPoint()
        XCTAssertEqual("Love All", score)
    }
    
    func test_gameScore_WhenPlayer1ScoreFirstPoint_Player2ScoreStillLove() {
        viewModel.callFuncToGetPoints(player1Point: 1, player2Point: 0)
        let score = viewModel.getPoint()
        XCTAssertEqual("Fifteen - Love", score)
    }
    
    func test_gameScore_WhenPlayer1ScoreFirstPoint_Player2ScoreFirstPoint() {
        viewModel.callFuncToGetPoints(player1Point: 1, player2Point: 1)
        let score = viewModel.getPoint()
        XCTAssertEqual("Fifteen All", score)
    }
    
    func test_gameScore_WhenPlayer1ScoreSecondPoint_Player2ScoreFirstPoint() {
        viewModel.callFuncToGetPoints(player1Point: 2, player2Point: 1)
        let score = viewModel.getPoint()
        XCTAssertEqual("Thirty - Fifteen", score)
    }
 
    func test_gameScore_WhenPlayer1ScoreSecondPoint_Player2ScoreSecondPoint() {
        viewModel.callFuncToGetPoints(player1Point: 2, player2Point: 2)
        let score = viewModel.getPoint()
        XCTAssertEqual("Thirty All", score)
    }

    func test_gameScore_WhenPlayer1ScoreThirdPoint_Player2ScoreSecondPoint() {
        viewModel.callFuncToGetPoints(player1Point: 3, player2Point: 2)
        let score = viewModel.getPoint()
        XCTAssertEqual("Forty - Thirty", score)
    }
    
    func test_gameScore_WhenPlayer1Player2ScoreThirdPoints() {
        viewModel.callFuncToGetPoints(player1Point: 3, player2Point: 3)
        let score = viewModel.getPoint()
        XCTAssertEqual("Deuce", score)
    }
    
    func test_gameScore_WhenPlayer1Advantage() {
        viewModel.callFuncToGetPoints(player1Point: 4, player2Point: 3)
        let score = viewModel.getPoint()
        XCTAssertEqual("Player1 Advantage", score)
    }
    
    func test_gameScore_WhenPlayer2Advantage() {
        viewModel.callFuncToGetPoints(player1Point: 3, player2Point: 4)
        let score = viewModel.getPoint()
        XCTAssertEqual("Player2 Advantage", score)
    }
    
    func test_gameScore_WhenPlayerWinWithoutAdvantage() {
        viewModel.callFuncToGetPoints(player1Point: 4, player2Point: 4)
        let score = viewModel.getPoint()
        XCTAssertEqual("Deuce", score)
    }
    
    func test_gameScore_WhenPlayer1WinWithAdvantage() {
        viewModel.callFuncToGetPoints(player1Point: 5, player2Point: 3)
        let score = viewModel.getPoint()
        XCTAssertEqual("Player1 Wins", score)
    }
    
    func test_gameScore_WhenPlayer2WinWithAdvantage() {
        viewModel.callFuncToGetPoints(player1Point: 3, player2Point: 5)
        let score = viewModel.getPoint()
        XCTAssertEqual("Player2 Wins", score)
    }
    
    func test_gameScore_WhenPlayer1Score4Points_Player2Score1Point() {
        viewModel.callFuncToGetPoints(player1Point: 4, player2Point: 1)
        let score = viewModel.getPoint()
        XCTAssertEqual("Player1 Wins", score)
    }
    
    func test_gameScore_WhenBothPlayersMoreThan4Points_Player1HasAdvantage() {
        viewModel.callFuncToGetPoints(player1Point: 6, player2Point: 5)
        let score = viewModel.getPoint()
        XCTAssertEqual("Player1 Advantage", score)
    }
    
    func test_gameScore_WhenBothPlayersMoreThan4Points_Player1HasWinWithAdvantage() {
        viewModel.callFuncToGetPoints(player1Point: 6, player2Point: 4)
        let score = viewModel.getPoint()
        XCTAssertEqual("Player1 Wins", score)
    }
    
    func test_gameScore_WhenBothPlayersMoreThan3Points_Deuce() {
        viewModel.callFuncToGetPoints(player1Point: 8, player2Point: 8)
        let score = viewModel.getPoint()
        XCTAssertEqual("Deuce", score)
    }
}
