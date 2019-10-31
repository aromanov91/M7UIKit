//
//  DSButtonL.swift
//  Player X
//
//  Created by Alexander Romanov on 12.09.2018.
//  Copyright © 2018 Alexander Romanov. All rights reserved.
//

import UIKit

class DSSelect: UIButton {
    
//    let burgerIcon: UIButton = {
//        let backIconButton = UIButton()
//        backIconButton.translatesAutoresizingMaskIntoConstraints = false
//        backIconButton.setBackgroundImage(UIImage(named: "BurherImage"), for: .normal)
//        backIconButton.setBackgroundImage(UIImage(named: "BurherImage"), for: .highlighted)
//        return backIconButton
//    }()
    
    // Параметры кнопки
    func setup() {
        
        // Color
        setTitleColor(DesignSystem.color.grayText, for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 21)
        contentHorizontalAlignment = .left

//        addSubview(burgerIcon)
//        burgerIcon.leftAnchor.constraint(equalTo: self.leftAnchor, constant: -46).isActive = true
//        burgerIcon.topAnchor.constraint(equalTo: self.topAnchor, constant: 2).isActive = true
//        burgerIcon.widthAnchor.constraint(equalToConstant: 30).isActive = true
//        burgerIcon.heightAnchor.constraint(equalToConstant: 30).isActive = true

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
       setTitleColor(DesignSystem.color.black, for: .normal)

    }
    
    func touchUp() {
        setTitleColor(DesignSystem.color.grayDark, for: .normal)
    }
}
