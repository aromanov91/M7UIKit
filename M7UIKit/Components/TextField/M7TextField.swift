//
//  M7TextField.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 20.11.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

@IBDesignable
public class M7TextField: UITextField, UITextFieldDelegate {
    
     public let title: M7Label = {
        var label = M7Label(font: M7LabelStyle.body1, color: M7LabelColor.primary)
         label.numberOfLines = 0
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
    

    public var placeholderText = "TextField"
    
    var alignment: NSTextAlignment = .left
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        delegate = self
        normal()
    }
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        delegate = self
        normal()
    }
    
    init(frame: CGRect, placeholderText: String) {
        super.init(frame: frame)
        self.placeholderText = placeholderText
        delegate = self
        normal()
    }
    
    init(frame: CGRect, placeholderText: String, alignment: NSTextAlignment) {
        super.init(frame: frame)
        self.placeholderText = placeholderText
        self.alignment = alignment
        delegate = self
        normal()
    }
    
    // MARK: - Button base
    func normal() {
        
        self.addSubview(title)
        
        // Color
        backgroundColor = DesignSystem.color.textField
        
        // Border
        layer.borderWidth = DesignSystem.border.Width.m
        layer.borderColor = DesignSystem.color.textField?.cgColor
        
        // Radius
        layer.cornerRadius = DesignSystem.radius.s
        layer.masksToBounds = true
        
        // Text
        textAlignment = alignment
        
    
    }

    // MARK: - Select state
    func select() {
        
        // Color
        backgroundColor = DesignSystem.color.white
        
        // Border
        layer.borderColor = DesignSystem.color.grayLight?.cgColor

        
    }

    // MARK: - Normal state
    func endSelect() {
        
        // Color
        backgroundColor = DesignSystem.color.gray
        
        // Border and Radius
        layer.borderColor = DesignSystem.color.gray?.cgColor
    }

    public func textFieldDidBeginEditing(_ textField: UITextField) {
        print("focused")
        select()
    }

    public func textFieldDidEndEditing(_ textField: UITextField) {
        print("lost focus")
        endSelect()
    }

    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldClear = хотите убрать клавиаутуру?")

        resignFirstResponder() //Убрать клавиатуру

        return true
    }
    

}
