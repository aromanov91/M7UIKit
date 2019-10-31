//
//  DSButtonL.swift
//  Player X
//
//  Created by Alexander Romanov on 12.09.2018.
//  Copyright © 2018 Alexander Romanov. All rights reserved.
//

import UIKit

class DSButton: UIButton {
    
    // Параметры кнопки
    func setup() {
        
        // Color
        backgroundColor = DesignSystem.color.violet
        layer.backgroundColor = DesignSystem.color.violet?.cgColor
        
        // Radius
        layer.cornerRadius = DesignSystem.radius.s
        clipsToBounds = false
        layer.masksToBounds = false
        
        // Shadow
        layer.shadowColor = DesignSystem.color.violetDark.cgColor
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
//        layer.backgroundColor = DesignSystem.Color.violetDark.cgColor
//
//        // Shadow
//        layer.shadowColor = DesignSystem.Color.violetDark.cgColor
//        layer.shadowOffset = DesignSystem.Shadow.z1.offset
//        layer.shadowRadius = DesignSystem.Shadow.z1.radius
//        layer.shadowOpacity = DesignSystem.Shadow.z1.opacity
        
//        UIView.animate(withDuration: 0.6,
//                       animations: {
//                        self.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
//
//                        self.backgroundColor = DesignSystem.Color.violetDark
//                        self.layer.backgroundColor = DesignSystem.Color.violetDark.cgColor
//                        self.layer.shadowColor = DesignSystem.Color.violetDark.cgColor
//                        self.layer.shadowOffset = DesignSystem.Shadow.z1.offset
//                        self.layer.shadowRadius = DesignSystem.Shadow.z1.radius
//                        self.layer.shadowOpacity = DesignSystem.Shadow.z1.opacity
//        },
//                       completion: { _ in
//                        UIView.animate(withDuration: 0.6) {
//                            self.transform = CGAffineTransform.identity
//
//
//                            self.backgroundColor = DesignSystem.Color.violet
//                            self.layer.backgroundColor = DesignSystem.Color.violet.cgColor
//
//                            // Shadow
//                            self.layer.shadowColor = DesignSystem.Color.violetDark.cgColor
//                            self.layer.shadowOffset = DesignSystem.Shadow.z2.offset
//                            self.layer.shadowRadius = DesignSystem.Shadow.z2.radius
//                            self.layer.shadowOpacity = DesignSystem.Shadow.z2.opacity
//                        }
//        })
        let notificationFeedbackGenerator = UINotificationFeedbackGenerator()
        notificationFeedbackGenerator.notificationOccurred(.success)
        
        
        UIView.animate(withDuration: 0.1, delay: 0.0, options: [.allowUserInteraction, .curveEaseIn], animations: {
            self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
            
                                    self.backgroundColor = DesignSystem.color.violetDark
                                    self.layer.backgroundColor = DesignSystem.color.violetDark.cgColor
                                    self.layer.shadowColor = DesignSystem.color.violetDark.cgColor
                                    self.layer.shadowOffset = DesignSystem.shadow.z1.offset
                                    self.layer.shadowRadius = DesignSystem.shadow.z1.radius
                                    self.layer.shadowOpacity = DesignSystem.shadow.z1.opacity
        }, completion: nil)
        
    }
    
    func touchUp() {
//        backgroundColor = DesignSystem.Color.violet
//        layer.backgroundColor = DesignSystem.Color.violet.cgColor
//
//        // Shadow
//        layer.shadowColor = DesignSystem.Color.violetDark.cgColor
//        layer.shadowOffset = DesignSystem.Shadow.z2.offset
//        layer.shadowRadius = DesignSystem.Shadow.z2.radius
//        layer.shadowOpacity = DesignSystem.Shadow.z2.opacity
        
        UIView.animate(withDuration: 0.1, delay: 0.0, options: [.allowUserInteraction, .curveEaseOut], animations: {
            self.transform = CGAffineTransform.identity
            
            
            
                                        self.backgroundColor = DesignSystem.color.violet
            self.layer.backgroundColor = DesignSystem.color.violet?.cgColor
            
                                        // Shadow
                                        self.layer.shadowColor = DesignSystem.color.violetDark.cgColor
                                        self.layer.shadowOffset = DesignSystem.shadow.z2.offset
                                        self.layer.shadowRadius = DesignSystem.shadow.z2.radius
                                        self.layer.shadowOpacity = DesignSystem.shadow.z2.opacity
        }, completion: nil)
        
        
    }
}
