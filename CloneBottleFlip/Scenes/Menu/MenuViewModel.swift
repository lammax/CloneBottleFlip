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
    var bestScoreNode: LabelNode!
    var highScoreNode: LabelNode!
    var totalFlipsNode: LabelNode!
    var totalFlipsScoreNode: LabelNode!

    init(frame: CGRect) {
        self.frame = frame
        setupNodes()
    }
    
    private func setupNodes() {
        logoNode = ButtonNode(model: logoModel)
        bestScoreNode = LabelNode(model: bestScoreModel)
        highScoreNode = LabelNode(model: highScoreModel)
        totalFlipsNode = LabelNode(model: totalFlipsModel)
        totalFlipsScoreNode = LabelNode(model: totalFlipsScoreModel)
    }
    
}

//Data
extension MenuViewModel {
    var logoModel: Menu.Button {
        Menu.Button(
            imageName: "logo",
            position: CGPoint(x: self.frame.midX, y: self.frame.maxY - 75),
            scale: CGPoint(x: 0.3, y: 0.3))
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
