//
//  SpecialBadge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class SpecialBadge: Badge {
    
    let badgeTeal = SKSpriteNode(imageNamed: "BadgeTeal").texture
    
    override init(requestType: UDRequestType) {
        super.init(requestType: requestType)
        texture = badgeTeal
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}




