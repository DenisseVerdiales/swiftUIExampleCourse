//
//  GameModel.swift
//  Shuzi
//
//  Created by Cynthia Denisse Verdiales Moreno on 31/05/24.
//

import Foundation

struct GameModel {
    var score: Int
    var maxTurns: Int
    var volume: Float
    var turns: Int // turns to play so far
    var answer: Int
    var alternatives: [Int] //posible solution including answer
    
    var gameWon: Bool {
        score < 0 || self.gameWon
    }
    
    mutating func increaseScore() {
        score += 1
    }
    
    mutating func nextTurn() {
        turns += 1
    }
    
    mutating func generateNewProblem() {
        // create an array of four different random values between 0 - 99
        alternatives = Int.generateUniqueRandomIntegers(count: 4)
        
        //let the last alternative be the answer
        answer = alternatives[3]
        
        //shuffle the alternatives so that the solution appears in a different position
        alternatives = alternatives.shuffled()
    }
    
    static var defaultGameModel: GameModel {
        .init(score: 0, maxTurns: 5, volume: 0.7, turns: 0, answer: 10, alternatives: Int.generateUniqueRandomIntegers(count: 4))
    }
}
