//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var numberOfItemsRarity: [UDItemRarity:Int] = [.common:0, .uncommon:0, .rare:0, .legendary:0]
        
        guard !inventory.isEmpty else {
         return numberOfItemsRarity
        }
        
        for item in inventory{
            let rarity = item.rarity as UDItemRarity
            switch (rarity){
            case .common:
                numberOfItemsRarity[.common]? += 1
            case .uncommon:
                numberOfItemsRarity[.uncommon]? += 1
            case .rare:
                numberOfItemsRarity[.rare]? += 1
            case .legendary:
                numberOfItemsRarity[.legendary]? += 1
            }
        }
        return numberOfItemsRarity
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
