//
//  GameScore.swift
//  KataTennis
//
//  Created by Puneet on 17/02/23.
//

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
        
        if(player1Points == player2Points) {
            return getPointsValue(point: player1Points) + " All"
        }
          
        return getPointsValue(point: player1Points) + " - " + getPointsValue(point: player2Points)
    }
    
    func checkIfDeuce() -> Bool {
        return self.player1Points == self.player2Points && self.player1Points >= 3
    }
    
    private func getPointsValue(point: Int) -> String {
        switch point {
        case 0:
            return "Love"
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
