//
//  GameScoreViewModel.swift
//  KataTennis
//
//  Created by Puneet on 17/02/23.
//

import UIKit

class GameScoreViewModel: NSObject {
    
    private(set) var resultStatus : String! {
        didSet {
            self.bindViewModelToController()
        }
    }
    var bindViewModelToController : (() -> ()) = {}
    override init() {
        super.init()
    }
    
    func callFuncToGetPoints(player1Point: Int, player2Point: Int) {
        self.resultStatus = GameScore().getPlayerPoints(player1Points: player1Point, player2Points: player2Point)
    }
    
    func getPoint() -> String {
        return self.resultStatus
    }
}
