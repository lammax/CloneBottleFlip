//
//  MenuScene.swift
//  CloneBottleFlip
//
//  Created by Максим Ламанский on 21.06.2021.
//

import SpriteKit

class MenuScene: SKScene {
    
    private var viewModel: MenuViewModel!
    override func didMove(to view: SKView) {
        backgroundColor = #colorLiteral(red: 0.6588235294, green: 0.6980392157, blue: 0.7254901961, alpha: 1)
        
        viewModel = MenuViewModel(frame: self.frame)
        
        setupUI()
    }
    
    func setupUI() {
        self.addChild(viewModel.logoNode)
        self.addChild(viewModel.bestScoreNode)
        self.addChild(viewModel.highScoreNode)
        self.addChild(viewModel.totalFlipsNode)
        self.addChild(viewModel.totalFlipsScoreNode)
    }
}
