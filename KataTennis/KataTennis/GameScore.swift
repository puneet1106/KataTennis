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
        if(player1Points == player2Points) {
            return getPointsValue(point: player1Points) + " All"
        }
          
        return getPointsValue(point: player1Points) + " - " + getPointsValue(point: player2Points)
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
