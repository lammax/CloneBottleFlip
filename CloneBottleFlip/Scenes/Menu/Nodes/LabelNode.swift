//
//  LabelNode.swift
//  CloneBottleFlip
//
//  Created by Максим Ламанский on 21.06.2021.
//

import SpriteKit

class LabelNode: SKLabelNode {

    convenience init(model: Menu.Label) {
        self.init(fontNamed: model.fontName)
        self.text = model.text
        self.fontSize = model.fontSize
        self.fontColor = model.fontColor
        self.position = model.position
    }
    
}
