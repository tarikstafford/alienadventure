//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func StringToArrayChars(_ string: String) -> [Character] {
        var array1 = [Character]()
        for i in string.characters {
            array1.append(i)
        }
        return(array1)
    }
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        let arrays1 = StringToArrayChars(s1)
        let arrays2 = StringToArrayChars(s2)
        let arrayshuffle = StringToArrayChars(shuffle)
        var arrays3: [Character] = []
        var arrays4: [Character] = []
        if s1 == "" && s2 == "" && shuffle == "" {
            return true
        } else if s1.characters.count + s2.characters.count == shuffle.characters.count {
        for i in arrayshuffle {
            if i == arrays1[0] || i == arrays1[1] {
                arrays3.append(i)
            } else if i == arrays2[0] || i == arrays2[1] {
                arrays4.append(i)
            }
}
        if arrays1 == arrays3 && arrays2 == arrays4 {
            return true
        } else {
            return false
            }
        } else {
            return false
        }
    }
}
