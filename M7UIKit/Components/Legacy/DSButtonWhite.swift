//
//  DSButtonL.swift
//  Player X
//
//  Created by Alexander Romanov on 12.09.2018.
//  Copyright © 2018 Alexander Romanov. All rights reserved.
//

import UIKit

class DSButtonWhite: UIButton {
    
    // Параметры кнопки
    func setup() {
        
        // Color
        backgroundColor = DesignSystem.color.white
        layer.backgroundColor = DesignSystem.color.white?.cgColor
        
        // Radius
        layer.cornerRadius = DesignSystem.radius.s
        clipsToBounds = false
        layer.masksToBounds = false
        
        // Shadow
        layer.shadowColor = DesignSystem.color.grayText?.cgColor
        layer.shadowOffset = DesignSystem.shadow.z1.offset
        layer.shadowRadius = DesignSystem.shadow.z1.radius
        layer.shadowOpacity = DesignSystem.shadow.z1.opacity
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
        
        // Shadow
        layer.shadowColor = DesignSystem.color.grayText?.cgColor
        layer.shadowOffset = DesignSystem.shadow.z1.offset
        layer.shadowRadius = DesignSystem.shadow.z1.radius
        layer.shadowOpacity = DesignSystem.shadow.z1.opacity
    }
    
    func touchUp() {
        backgroundColor = DesignSystem.color.white
        layer.backgroundColor = DesignSystem.color.white?.cgColor
        
        // Shadow
        layer.shadowColor = DesignSystem.color.grayText?.cgColor
        layer.shadowOffset = DesignSystem.shadow.z2.offset
        layer.shadowRadius = DesignSystem.shadow.z2.radius
        layer.shadowOpacity = DesignSystem.shadow.z2.opacity
    }
}
