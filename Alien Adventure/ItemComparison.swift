//
//  ItemComparison.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

func <(lhs: UDItem, rhs: UDItem) -> Bool {
    let lhsRarity = lhs.rarity.rawValue
    let rhsRarity = rhs.rarity.rawValue
        if lhsRarity < rhsRarity {
            return true
        } else if lhsRarity > rhsRarity {
            return false
        } else {
            let lhsBaseVal = lhs.baseValue
            let rhsBaseVal = rhs.baseValue
                if lhsBaseVal < rhsBaseVal {
                    return true
                } else {
                    return false
                }
            }
}
    


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"
