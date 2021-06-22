//
//  BottleNode.swift
//  CloneBottleFlip
//
//  Created by Максим Ламанский on 22.06.2021.
//

import SpriteKit

class BottleNode: SKSpriteNode {
    
    convenience init(model: Menu.Bottle) {
        self.init(imageNamed: model.imageName)
        self.position = model.position
        self.zPosition = model.zPosition
        self.xScale = model.scale.x
        self.yScale = model.scale.y
    }
    
}
