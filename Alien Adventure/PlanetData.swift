//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        let planetData = Bundle.main.url(forResource: dataFile, withExtension: "json")!
        let rawPlanetData = try! Data(contentsOf: planetData)
        var planetIntrigue: [String:Int] = [:]
        var planetDictJSON: [[String:Any]]!
        var commonIntrigue: Int = 0
        var uncommonIntrigue: Int = 0
        var rareIntrigue: Int = 0
        var legendaryIntrigue: Int = 0
        
        do {
            planetDictJSON = try!
                JSONSerialization.jsonObject(with: rawPlanetData, options: JSONSerialization.ReadingOptions()) as! [[String:Any]]
        }
        
        for planet in planetDictJSON {
            if let commonItems = planet["CommonItemsDetected"] as? Int {
                commonIntrigue = commonItems * 1
            }
            if let uncommonItems = planet["UncommonItemsDetected"] as? Int {
                uncommonIntrigue = uncommonItems * 2
            }
            if let rareItems = planet["RareItemsDetected"] as? Int {
                rareIntrigue = rareItems * 3
            }
            if let legendaryItems = planet["LegendaryItemsDetected"] as? Int {
                legendaryIntrigue = legendaryItems * 4
            }
            if let planetName = planet["Name"] as? String {
                planetIntrigue[planetName] = (commonIntrigue + uncommonIntrigue + rareIntrigue + legendaryIntrigue)
            }
        }
        
        let planetTuple = planetIntrigue.sorted{
            $0.value > $1.value
        }
        
            
            
        return (planetTuple.first?.key)!
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
