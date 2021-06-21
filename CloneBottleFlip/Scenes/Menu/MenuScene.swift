//
//  MenuScene.swift
//  CloneBottleFlip
//
//  Created by Максим Ламанский on 21.06.2021.
//

import SpriteKit

class MenuScene: SKScene {
    override func didMove(to view: SKView) {
        backgroundColor = #colorLiteral(red: 0.6588235294, green: 0.6980392157, blue: 0.7254901961, alpha: 1)
        
        setupUI()
    }
    
    func setupUI() {
        let logo = ButtonNode(
            imageName: "logo",
            position: CGPoint(x: self.frame.midX, y: self.frame.maxY - 75),
            scale: CGPoint(x: 0.3, y: 0.3))
        self.addChild(logo)
        
        
    }
}
