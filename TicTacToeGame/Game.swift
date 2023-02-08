//  Game.swift Created by Nurlan Seitov on 8/2/23.
//
import Foundation

class Game: Menu {
    var playerName: String
    var array1: [String] = []
    var array2: [String] = []
    var array3: [String] = []
    
    init(playerName: String, array1: [String], array2: [String], array3: [String]) {
        self.playerName = playerName
        self.array1 = array1
        self.array2 = array2
        self.array3 = array3
    }
    
    func startGame() {
        
    }
        func endGame() {
            
        }
    
}
