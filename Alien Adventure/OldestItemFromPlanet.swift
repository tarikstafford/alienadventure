//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        let itemsArray = itemsFromPlanet(inventory: inventory, planet: planet)
        var oldestItem: UDItem? = nil
        
        for item in itemsArray {
            if let carbonAge = item.historicalData["CarbonAge"] as? Int {
                if oldestItem == nil {
                    oldestItem = item
                } else {
                    if carbonAge > (oldestItem?.historicalData["CarbonAge"] as? Int)! {
                        oldestItem = item
                    }
                }
            }
        
        }
        return oldestItem
    }

}


    


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
