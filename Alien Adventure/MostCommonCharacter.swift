//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        guard !inventory.isEmpty else {
            return nil
        }
        
        let alphaBet = "abcdefghijklmnopqrstuvwxyz"
        
        var charDict: [Character:Int] = [:]
        for char in alphaBet.characters {
            charDict[char] = (0)
        }
        
        for item in inventory {
            let itemName = item.name
            let itemChars = itemName.lowercased().characters
            for character in itemChars {
                    for char in alphaBet.characters {
                        if character == char {
                            charDict[char]! += (1)
                        }
    
                }
            }
        }
        
        let charTuple = charDict.sorted{
            $0.value > $1.value
        }
        
        return (charTuple.first?.key)
    }
}
