//
//  DSTextField.swift
//  Player X
//
//  Created by Alexander Romanov on 26/09/2018.
//  Copyright © 2018 Alexander Romanov. All rights reserved.
//

import UIKit

@IBDesignable
class TextField: UITextField, UITextFieldDelegate {
    
    
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
        
        //placeholder = placeholderText
    
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

    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("focused")
        select()
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        print("lost focus")
        endSelect()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldClear = хотите убрать клавиаутуру?")

        resignFirstResponder() //Убрать клавиатуру

        return true
    }
    
}
