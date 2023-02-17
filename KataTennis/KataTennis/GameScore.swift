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
        if(player1Points == player2Points && player1Points == 0) {
            return "Love All"
        } else if (player1Points == 1 && player2Points == 0) {
            return "Fifteen - Love"
        }
        return ""
    }
}
