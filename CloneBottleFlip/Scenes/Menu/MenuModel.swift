//
//  MenuModel.swift
//  CloneBottleFlip
//
//  Created by Максим Ламанский on 21.06.2021.
//

import SpriteKit

enum Menu {
    
    struct Label {
        let fontName: String
        let fontSize: CGFloat
        let fontColor: UIColor
        let position: CGPoint
        let text: String
    }

    struct Button {
        let imageName: String
        let position: CGPoint
        let scale: CGPoint
    }

}
