//
//  M7TextField.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 20.11.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

@IBDesignable
public class M7TextFieldDel: UITextField {
    
    public let title: M7Label = {
        var label = M7Label(font: M7LabelStyle.body2, color: M7LabelColor.primary)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public let base: UIView = {
        let view = UIView()
        view.clipsToBounds = false
        view.layer.masksToBounds = false
        view.backgroundColor = M7Colors.gray
        view.layer.cornerRadius = 8
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public var placeholderText = "TextField"
    
    var alignment: NSTextAlignment = .left
    
    func normal() {
        self.addSubview(base)
        self.addSubview(title)
        
        title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        title.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        title.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        
        base.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        base.topAnchor.constraint(equalTo: title.bottomAnchor , constant: 4).isActive = true
        base.heightAnchor.constraint(equalToConstant: 48).isActive = true
        base.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        font = M7Fonts.bodyBold1
        
        // Color
//        backgroundColor = UIColor.white
//
//        // Border
//        layer.borderWidth = DesignSystem.border.Width.m
//        layer.borderColor =  UIColor.white.cgColor
//
//        // Radius
//        layer.cornerRadius = DesignSystem.radius.s
        //layer.masksToBounds = true
        
        // Text
        textAlignment = alignment
        
    }
    
    // MARK: - Select state
    func select() {
        
    }
    
    // MARK: - Normal state
    func endSelect() {
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        //delegate = self
        normal()
    }
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        //delegate = self
        normal()
    }
    
    init(frame: CGRect, placeholderText: String) {
        super.init(frame: frame)
        self.placeholderText = placeholderText
        //delegate = self
        normal()
    }
    
    init(frame: CGRect, placeholderText: String, alignment: NSTextAlignment) {
        super.init(frame: frame)
        self.placeholderText = placeholderText
        self.alignment = alignment
        //delegate = self
        normal()
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
    
    override open func borderRect(forBounds bounds: CGRect) -> CGRect {
        let rect = CGRect(
            x: 0,
            y: 0,
            width: bounds.size.width,
            height: 200)
        return rect
    }
    
    override public func textRect(forBounds: CGRect) -> CGRect {
        let rect = CGRect(
            x: 16,
            y: 40,
            width: bounds.size.width - 20,
            height: 48)
        return rect
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = CGRect(
            x: 16,
            y: 40,
            width: bounds.size.width - 20,
            height: 48)
        return rect
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        let rect = CGRect(
            x: 16,
            y: 40,
            width: bounds.size.width,
            height: 24)
        return rect
    }
    


    override open func clearButtonRect(forBounds bounds: CGRect) -> CGRect {
        let superRect = super.clearButtonRect(forBounds: bounds)
        return superRect.offsetBy(dx: -20, dy: 20)
    }
    

    
    override final public var borderStyle: UITextField.BorderStyle {
        get {
            return .none
        }
        set {
            super.borderStyle = .none
        }
    }

    
    override open var intrinsicContentSize: CGSize {
        return CGSize(width: bounds.size.width, height: 76)
    }
    
}
