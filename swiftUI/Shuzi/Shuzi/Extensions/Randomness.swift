//
//  Randomness.swift
//  Shuzi
//
//  Created by Cynthia Denisse Verdiales Moreno on 12/06/24.
//

import Foundation

extension Int {
    /*
     random in the range lower ... upper
     ex: lower == 1, upper == 2
     Random number from 1..2
     if count == 1:
     possible output is [2]
     if count == 2:
     possible output is [2,1] or [1,2]
     if count == 3:
     impossible. upper - lower = 1 < 3
     
     */
    static func generateUniqueRandomIntegers(count: Int, lower: Int = 0, upper: Int = 99 ) -> [Int] {
        if count > upper - lower + 1 {
            return []
        }
        
        var result = [Int]()
        
        while result.count < count {
            let randomInt = Int.random(in: lower...upper)
            
            //check for uniqueness
            if !result.contains(randomInt) {
                //Good, so we can append
                result.append(randomInt)
            }
        }
        return result
    }
}
