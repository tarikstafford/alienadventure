//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        var finalArray: [Int] = []
        let bannedPList = Bundle.main.url(forResource: dataFile, withExtension: "plist")
        let bannedArray = NSArray(contentsOf: bannedPList!) as? [[String:Any]]
        for item in bannedArray! {
            if let itemName = item["Name"] as? String, let itemAge = item["HistoricalData"] as? [String:Any] {
                let itemAgeNum = itemAge["CarbonAge"] as? Int
                if itemName.contains("Laser") && itemAgeNum! < 30 {
                        if let idNumber = item["ItemID"] as? Int{
                            finalArray.append(idNumber)
                        }
                }
            }
        }
        
        return finalArray
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
