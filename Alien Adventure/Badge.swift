//
//  Badge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class Badge: SKSpriteNode {

    var requestType: UDRequestType
    let badge = SKSpriteNode(imageNamed: "BadgeMagenta").texture
    
    init(requestType: UDRequestType) {
        self.requestType = requestType
        super.init(texture: badge, color: UIColor.clear, size: CGSize(width: 48, height: 48))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    enum BadgeAnimation: Int {
        case growAndShrink = 0
        case rotate
        case shake
    
        func randomAnim() -> BadgeAnimation {
            let randomActionNum = arc4random_uniform(3)
            return BadgeAnimation(rawValue: Int(randomActionNum))!
        }
    }
    
    switch BadgeAnimation.randomAnim() {
        case .growAndShrink: break
        }
}



