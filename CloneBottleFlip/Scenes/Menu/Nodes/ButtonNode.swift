//
//  ButtonNode.swift
//  CloneBottleFlip
//
//  Created by Максим Ламанский on 21.06.2021.
//

import SpriteKit

class ButtonNode: SKSpriteNode {
    
    private var originalScale: CGFloat = .zero

    init(imageName: String, position: CGPoint, scale: CGPoint) {
        let texture = SKTexture(imageNamed: imageName)
        super.init(texture: texture, color: .clear, size: texture.size())
        
        self.position = position
        self.xScale = scale.x
        self.yScale = scale.y
        self.originalScale = scale.x
        
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
