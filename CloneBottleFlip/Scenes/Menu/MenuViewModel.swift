//
//  MenuViewModel.swift
//  CloneBottleFlip
//
//  Created by Максим Ламанский on 21.06.2021.
//

import SpriteKit

class MenuViewModel {
    
    private let frame: CGRect
    private var highScore: Int = .zero
    private var totalFlips: Int = .zero

    //private var nodes: [String: Any] = [:]
    var logoNode: ButtonNode!
    var playButtonNode: ButtonNode!
    var tableNode: ButtonNode!
    var bottleNode: BottleNode!

    var leftButtonNode: ButtonNode!
    var rightButtonNode: ButtonNode!

    var bestScoreNode: LabelNode!
    var highScoreNode: LabelNode!
    
    var totalFlipsNode: LabelNode!
    var totalFlipsScoreNode: LabelNode!

    init(frame: CGRect) {
        self.frame = frame
        makeNodes()
        setupNodes()
    }
    
    private func makeNodes() {
        logoNode = ButtonNode(model: logoModel)
        playButtonNode = ButtonNode(model: playButtonModel)
        tableNode = ButtonNode(model: tableModel)
        bottleNode = BottleNode(model: bottleModel)
        leftButtonNode = ButtonNode(model: leftButtonModel)
        rightButtonNode = ButtonNode(model: rightButtonModel)
        bestScoreNode = LabelNode(model: bestScoreModel)
        highScoreNode = LabelNode(model: highScoreModel)
        totalFlipsNode = LabelNode(model: totalFlipsModel)
        totalFlipsScoreNode = LabelNode(model: totalFlipsScoreModel)
    }
    
    private func setupNodes() {
        tableNode.zPosition = 3
        
        changeButton(for: leftButtonNode, state: false)
        changeButton(for: rightButtonNode, state: true)
    }
    
}

//MARK: Logic
extension MenuViewModel {
    
    func changeButton(for node: SKSpriteNode, state: Bool) {
        var buttonColor = #colorLiteral(red: 0.3411764706, green: 0.3529411765, blue: 0.4431372549, alpha: 0.2030249589)
        
        if state { buttonColor = #colorLiteral(red: 0.3411764706, green: 0.3529411765, blue: 0.4431372549, alpha: 1) }
        
        node.color = buttonColor
        node.colorBlendFactor = 1
        
    }
    
}

//MARK: Data
extension MenuViewModel {
    var logoModel: Menu.Button {
        Menu.Button(
            imageName: "logo",
            position: CGPoint(x: self.frame.midX, y: self.frame.maxY - 75),
            scale: CGPoint(x: 0.2, y: 0.2))
    }
    
    var playButtonModel: Menu.Button {
        Menu.Button(
            imageName: "play-button",
            position: CGPoint(x: self.frame.midX, y: self.frame.midY - 15),
            scale: CGPoint(x: 0.3, y: 0.3))
    }
    
    var tableModel: Menu.Button {
        Menu.Button(
            imageName: "table",
            position: CGPoint(x: self.frame.midX, y: self.frame.minY + 20),
            scale: CGPoint(x: 0.1, y: 0.1))
    }
    
    var bottleModel: Menu.Bottle {
        Menu.Bottle(
            imageName: "soda",
            position: CGPoint(x: self.frame.midX, y: self.frame.minY + 63),
            zPosition: 10,
            scale: CGPoint(x: 0.1, y: 0.1))
    }
    
    var leftButtonModel: Menu.Button {
        Menu.Button(
            imageName: "left_button",
            position: CGPoint(x: self.frame.minX + 50, y: self.bottleNode.frame.midY),
            scale: CGPoint(x: 0.1, y: 0.1))
    }
    
    var rightButtonModel: Menu.Button {
        Menu.Button(
            imageName: "right_button",
            position: CGPoint(x: self.frame.maxX - 50, y: self.bottleNode.frame.midY),
            scale: CGPoint(x: 0.1, y: 0.1))
    }
    
    var bestScoreModel: Menu.Label {
        Menu.Label(
            fontName: UI_Font,
            fontSize: 15.0,
            fontColor: #colorLiteral(red: 0.7568627451, green: 0.3450980392, blue: 0.3450980392, alpha: 1),
            position: CGPoint(x: self.logoNode.frame.minX, y: logoNode.frame.minY - 10),
            text: "Best score")
    }

    var highScoreModel: Menu.Label {
        Menu.Label(
            fontName: UI_Font,
            fontSize: 15.0,
            fontColor: #colorLiteral(red: 0.7568627451, green: 0.3450980392, blue: 0.3450980392, alpha: 1),
            position: CGPoint(x: self.bestScoreNode.frame.maxX + 10, y: self.bestScoreNode.frame.minY),
            text: "\(highScore)")
    }

    var totalFlipsModel: Menu.Label {
        Menu.Label(
            fontName: UI_Font,
            fontSize: 15.0,
            fontColor: #colorLiteral(red: 0.1411764706, green: 0.231372549, blue: 0.6666666667, alpha: 1),
            position: CGPoint(x: self.logoNode.frame.maxX, y: self.bestScoreNode.frame.minY),
            text: "Flip count")
    }

    var totalFlipsScoreModel: Menu.Label {
        Menu.Label(
            fontName: UI_Font,
            fontSize: 15.0,
            fontColor: #colorLiteral(red: 0.1411764706, green: 0.231372549, blue: 0.6666666667, alpha: 1),
            position: CGPoint(x: self.totalFlipsNode.frame.maxX + 10, y: self.bestScoreNode.frame.minY),
            text: "\(totalFlips)")
    }
}
