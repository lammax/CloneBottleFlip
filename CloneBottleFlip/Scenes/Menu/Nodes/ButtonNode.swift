//
//  ButtonNode.swift
//  CloneBottleFlip
//
//  Created by Максим Ламанский on 21.06.2021.
//

import SpriteKit

class ButtonNode: SKSpriteNode {
    
    private var originalScale: CGFloat = .zero

    init(model: Menu.Button) {
        let texture = SKTexture(imageNamed: model.imageName)
        super.init(texture: texture, color: .clear, size: texture.size())
        
        self.position = model.position
        self.xScale = model.scale.x
        self.yScale = model.scale.y
        self.originalScale = model.scale.x
        
        buttonAnimation()
    }
    
    private func buttonAnimation() {
        let scaleDownAction = SKAction.scale(to: 0, duration: 0)
        let scaleUpAction = SKAction.scale(to: originalScale, duration: 2.0)
        let sequence = SKAction.sequence([scaleDownAction, scaleUpAction ])
        
        self.run(sequence)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
