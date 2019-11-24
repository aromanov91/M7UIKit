//
//  M7TextField.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 20.11.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

public enum N7TextFieldType: String {
    
    case outlined = "outlined"
    
    case filled = "filled"
    
    case none = "none"
}

@IBDesignable
public class M7TextField: UITextField,UITextFieldDelegate {
    
    @IBInspectable public var type: String = "" {
        didSet {
            if type != oldValue {
                normal()
            }
        }
    }
    
    @IBInspectable public var showLabel: Bool = true {
        didSet {
            if showLabel != oldValue {
                normal()
            }
        }
    }
    
    @IBInspectable public var errorText: String = "" {
        didSet {
            if errorText != oldValue {
                normal()
            }
        }
    }
    
    public let title: M7Label = {
        var label = M7Label(font: M7LabelStyle.body2, color: M7LabelColor.primary)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public let errorLabel: M7Label = {
        var label = M7Label(font: M7LabelStyle.bodyBold2, color: M7LabelColor.error)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public let base: UIView = {
        let view = UIView()
        view.clipsToBounds = false
        view.layer.masksToBounds = false
        view.backgroundColor = M7Colors.gray
        view.layer.cornerRadius = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public let line: UIView = {
        let view = UIView()
        view.clipsToBounds = false
        view.layer.masksToBounds = false
        view.backgroundColor = M7Colors.gray3
        view.layer.cornerRadius = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public var placeholderText = "TextField"
    
    var alignment: NSTextAlignment = .left
    
    func normal() {
        //self.addSubview(base)
        
        switch self.type {
        case "outlined":
            if showLabel {
                self.addSubview(title)
                
                title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
                title.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
                title.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
                
                font = M7Fonts.bodyBold1
                
                // Color
                backgroundColor = M7Colors.gray
                
                // Border
                layer.borderWidth = DesignSystem.border.Width.m
                layer.borderColor =  M7Colors.gray.cgColor
                
                // Radius
                layer.cornerRadius = DesignSystem.radius.s
                
                
            } else {
                font = M7Fonts.bodyBold1
                
                // Color
                backgroundColor = M7Colors.gray
                
                // Border
                layer.borderWidth = DesignSystem.border.Width.m
                layer.borderColor =  M7Colors.gray.cgColor
                
                // Radius
                layer.cornerRadius = DesignSystem.radius.s
            }
        case "filled":
            self.addSubview(title)
            self.addSubview(base)
            
            title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
            title.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
            title.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
            
            base.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
            base.topAnchor.constraint(equalTo: self.topAnchor, constant: 59).isActive = true
            base.heightAnchor.constraint(equalToConstant: 2).isActive = true
            base.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
            
            font = M7Fonts.bodyBold1
            
            // Color
            backgroundColor = M7Colors.white
            
            // Border
            layer.borderWidth = DesignSystem.border.Width.m
            layer.borderColor =  M7Colors.white.cgColor
            
        case "none":
            font = M7Fonts.bodyBold1
        default:
            break
        }
        
        if errorText != "" {
            self.addSubview(errorLabel)
        }
        
        layer.masksToBounds = true
        
        textAlignment = alignment
    }
    
    // MARK: - Select state
    func select() {
        switch self.type {
        case "outlined":
            // Color
            backgroundColor = M7Colors.white
            
            // Border
            layer.borderWidth = DesignSystem.border.Width.m
            layer.borderColor =  M7Colors.primary.cgColor
        case "filled":
            base.backgroundColor = M7Colors.primary
            
        default:
            break
        }
    }
    
    // MARK: - Normal state
    func endSelect() {
        switch self.type {
        case "outlined":
            // Color
            backgroundColor = M7Colors.gray
            
            // Border
            layer.borderWidth = DesignSystem.border.Width.m
            layer.borderColor =  M7Colors.gray.cgColor
        case "filled":
            base.backgroundColor = M7Colors.gray3
            
        default:
            break
        }
    }
    
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
        resignFirstResponder() //Убрать клавиатуру
        return true
    }
    
    override open func borderRect(forBounds bounds: CGRect) -> CGRect {
        let rect = CGRect(
            x: 0,
            y: 0,
            width: bounds.size.width,
            height: 76)
        return rect
    }
    
    override public func textRect(forBounds: CGRect) -> CGRect {
        switch self.type {
        case "outlined":
            if showLabel {
                let rect = CGRect(
                    x: 16,
                    y: 40,
                    width: bounds.size.width - 20,
                    height: 48)
                return rect
            } else {
                let rect = CGRect(
                    x: 16,
                    y: 18,
                    width: bounds.size.width - 20,
                    height: 64)
                return rect
            }
            
        case "filled":
            let rect = CGRect(
                x: 2,
                y: 30,
                width: bounds.size.width,
                height: 48)
            return rect
            
        case "none":
            let rect = CGRect(
                x: 0,
                y: 18,
                width: bounds.size.width,
                height: 64)
            return rect
            
        default:
            break
        }
        return CGRect(x: 20,y: 20, width: 20, height: 20)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        switch self.type {
        case "outlined":
            
            if showLabel {
                let rect = CGRect(
                    x: 16,
                    y: 40,
                    width: bounds.size.width - 20,
                    height: 48)
                return rect
            } else {
                let rect = CGRect(
                    x: 16,
                    y: 18,
                    width: bounds.size.width - 20,
                    height: 64)
                return rect
            }
            
        case "filled":
            let rect = CGRect(
                x: 2,
                y: 30,
                width: bounds.size.width,
                height: 48)
            return rect
        case "none":
            let rect = CGRect(
                x: 0,
                y: 18,
                width: bounds.size.width,
                height: 64)
            return rect
        default:
            break
        }
        return CGRect(x: 20,y: 20, width: 20, height: 20)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        switch self.type {
        case "outlined":
            if showLabel {
                let rect = CGRect(
                    x: 16,
                    y: 40,
                    width: bounds.size.width,
                    height: 24)
                return rect
            } else {
                let rect = CGRect(
                    x: 16,
                    y: 12,
                    width: bounds.size.width,
                    height: 24)
                return rect
            }
        case "filled":
            let rect = CGRect(
                x: 3,
                y: 30,
                width: bounds.size.width,
                height: 24)
            return rect
        case "none":
            let rect = CGRect(
                x: 0,
                y: 12,
                width: bounds.size.width,
                height: 24)
            return rect
        default:
            break
        }
        return CGRect(x: 20,y: 20, width: 20, height: 20)
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
        if showLabel {
            return CGSize(width: bounds.size.width, height: 76)
        } else {
            return CGSize(width: bounds.size.width, height: 48)
        }
    }
}
