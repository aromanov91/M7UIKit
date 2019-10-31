//
//  DSButtonL.swift
//  Player X
//
//  Created by Alexander Romanov on 12.09.2018.
//  Copyright © 2018 Alexander Romanov. All rights reserved.
//

import UIKit

class DSBottonGray: UIButton {
    
    // Параметры кнопки
    func setup() {
        
        // Color
        backgroundColor = DesignSystem.color.grayExtraLight
        layer.backgroundColor = DesignSystem.color.grayExtraLight?.cgColor
        
        // Radius
        layer.cornerRadius = DesignSystem.radius.s
        clipsToBounds = false
        layer.masksToBounds = false
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setup()
    }
    
    // Инициализатор кнопки
    convenience init(title: String? = nil) {
        self.init(type: .custom)
        
        if let title = title {
            setTitle(title, for: .normal)
        }
        
        setup()
    }
    
    // События нажатия и отпускания кнопки
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                touchDown()
            } else {
                cancelTracking(with: nil)
                touchUp()
            }
        }
    }
    
    func touchDown() {
        layer.backgroundColor = DesignSystem.color.gray?.cgColor
    }
    
    func touchUp() {
        backgroundColor = DesignSystem.color.white
        layer.backgroundColor = DesignSystem.color.white?.cgColor
    }
}
