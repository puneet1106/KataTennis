
import Foundation

class GameScore: NSObject {
    
    var player1Points = 0;
    var player2Points = 0;
    
    func getPlayerPoints(player1Points: Int, player2Points: Int) -> String {
        
        self.player1Points = player1Points
        self.player2Points = player2Points
        
        if checkIfDeuce() {
            return "Deuce"
        }
        
        if checkIfAdvantage() {
            return playerHavingMorePoints() + " Advantage"
        }
        
        if checkIfWinner() {
            return playerHavingMorePoints() + " Wins"
        }
        
        if(player1Points == player2Points) {
            return getPointsValue(point: player1Points) + " All"
        }
          
        return getPointsValue(point: player1Points) + " - " + getPointsValue(point: player2Points)
    }
    
    func checkIfDeuce() -> Bool {
        return self.player1Points == self.player2Points && self.player1Points >= 3
    }
    
    func checkIfAdvantage() -> Bool {
        return checkIfPlayer1Advantage() || checkIfPlayer2Advantage()
    }
    
    func checkIfPlayer1Advantage() -> Bool {
        return (self.player1Points > 3) && (self.player1Points - self.player2Points == 1)
    }
    
    func checkIfPlayer2Advantage() -> Bool {
        return (self.player2Points > 3) && (self.player2Points - self.player1Points == 1)
    }
    
    func checkIfWinner() -> Bool {
        return checkIfPlayer1Winner() || checkIfPlayer2Winner()
    }
    
    func checkIfPlayer1Winner() -> Bool {
        return (self.player1Points > 3) && (self.player1Points - self.player2Points >= 2)
    }
    
    func checkIfPlayer2Winner() -> Bool {
        return (self.player2Points > 3) && (self.player2Points - self.player1Points >= 2)
    }
    
    func playerHavingMorePoints() -> String {
        return self.player1Points > self.player2Points ? "Player1" : "Player2"
    }
    
    private func getPointsValue(point: Int) -> String {
        switch point {
        case 1:
            return "Fifteen"
        case 2:
            return "Thirty"
        case 3:
            return "Forty"
        default:
            return "Love"
        }
    }
}
