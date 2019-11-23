//
//  Button.swift
//  GrayOnWhiteKit
//
//  Created by Aleksandr Romanov on 06.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

public enum N7ButtonType: String {
    case primary = "primary"
    case secondary = "secondary"
    case gray = "gray"
    case link = "link"
    case deleteLink = "deleteLink"
}

public enum N7ButtonRounded: String {
    case full = "full"
    case l = "l"
    case m = "m"
}

public enum N7ButtonSize: String {
    case l = "l"
    case m = "m"
}

@IBDesignable
public class M7Button: UIButton {
    
    // MARK: - Button style
    
    /// Font
    private let fontLabel: UIFont = M7Fonts.button
    
    /// Primary button
    private let primaryLabel: UIColor = M7Colors.white
    private let primaryBackground: UIColor = M7Colors.primary
    private let primaryBackgroundHighlighted: UIColor = M7Colors.primary.withAlphaComponent(0.8)
    
    /// Whie button
    private let secondaryLabel: UIColor = M7Colors.labelPrimary
    private let secondaryBackground: UIColor = M7Colors.white
    private let secondaryShadow = M7Colors.gray4
    
    /// Link
    private let linkLabel: UIColor = M7Colors.link
    private let linkBackground: UIColor = UIColor.clear
    
    /// delete link
    private let deletelinkLabel: UIColor = M7Colors.error
    private let deletelinkBackground: UIColor = UIColor.clear
    
    /// Gray
    private let grayLabel: UIColor = M7Colors.link
    private let grayBackground: UIColor = M7Colors.gray
    private let grayBackgroundHighlighted: UIColor = M7Colors.gray.withAlphaComponent(0.8)
    
    let imgLeftInset: CGFloat = 12
    let imgRightInset: CGFloat = 12
    let imgTopInset: CGFloat = 12
    let imgBottomInset: CGFloat = 12
    
    /// Sizes
    public var contentEdgeInsetsL: UIEdgeInsets = UIEdgeInsets(top: 18, left: 24, bottom: 18, right: 24)
    public var contentEdgeInsetsM: UIEdgeInsets = UIEdgeInsets(top: 4, left: 16, bottom: 4, right: 16)
    
    public var buttonSizeL: CGSize = CGSize(width: 355, height: 56)
    public var buttonSizeM: CGSize = CGSize(width: 355, height: 36)
    
    //  MARK: - Button Params
    
    @IBInspectable public var type: String = "" {
        didSet {
            if type != oldValue {
                update()
            }
        }
    }
    
    @IBInspectable public var size: String = "" {
        didSet {
            if size != oldValue {
                update()
            }
        }
    }
    
    @IBInspectable public var rounded: String = "" {
        didSet {
            if rounded != oldValue {
                update()
            }
        }
    }
    @IBInspectable public var shadow: Bool = false {
        didSet {
            if shadow != oldValue {
                update()
            }
        }
    }
    
    @IBInspectable public var scale: Bool = true {
        didSet {
            if scale != oldValue {
                update()
            }
        }
    }
    
    @IBInspectable var leftImage: UIImage? {
        didSet {
            if leftImage != oldValue {
                update()
            }
        }
    }
    
    @IBInspectable var rightImage: UIImage? {
        didSet {
            if rightImage != oldValue {
                update()
            }
        }
    }
    
    private var leftImgView: UIImageView?
    
    private var rightImgView: UIImageView?
    
    @IBInspectable public var loading: Bool = false {
        didSet {
            if loading {
                self.loadingIndicator(true)
            }
        }
    }
    
    public init(type: N7ButtonType) {
        self.type = type.rawValue
        super.init(frame: .zero)
        update()
    }
    
    public init(type: N7ButtonType, size: N7ButtonSize) {
        self.type = type.rawValue
        self.size = size.rawValue
        super.init(frame: .zero)
        update()
    }
    
    public init(type: N7ButtonType, size: N7ButtonSize, rounded: N7ButtonRounded) {
        self.type = type.rawValue
        self.size = size.rawValue
        self.rounded = rounded.rawValue
        super.init(frame: .zero)
        update()
    }
    
    public init(type: N7ButtonType, size: N7ButtonSize, rounded: N7ButtonRounded, shadow: Bool) {
        self.type = type.rawValue
        self.size = size.rawValue
        self.rounded = rounded.rawValue
        self.shadow = shadow
        super.init(frame: .zero)
        update()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        //addIcon()
        update()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //addIcon()
        update()
    }
    
    override open var intrinsicContentSize: CGSize {
        
        switch size {
        case "l":
            return buttonSizeL
        case "m":
            return buttonSizeM
        default:
            return buttonSizeL
        }
    }
    
    //        override public func draw(_ rect: CGRect) {
    //            super.draw(rect)
    //
    //           update()
    //
    //        }
    
    
    // Параметры кнопки
    func addIcon() {
        if self.leftImage != nil {
            self.leftImgView = UIImageView(frame:
                CGRect(x: self.imgLeftInset,
                       y: self.imgTopInset,
                       width: self.bounds.height - (self.imgTopInset + self.imgBottomInset),
                       height: self.bounds.height - (self.imgTopInset + self.imgBottomInset)))
            self.leftImgView!.contentMode = .scaleAspectFit
            self.leftImgView!.image = self.leftImage
            self.addSubview(self.leftImgView!)
        }
        
        if self.rightImage != nil {
            
            //            let imageSize = rightImgView?.intrinsicContentSize
            //            self.rightImgView?.frame = CGRect(
            //                origin: CGPoint(
            //                    x: bounds.maxX - imageSize!.width, y: bounds.minY), size: imageSize!)
            
            
            
            let widthIcon = self.bounds.height - (self.imgTopInset + self.imgBottomInset)
            
            self.rightImgView = UIImageView(frame:
                CGRect(x: frame.width - widthIcon,
                       y: self.imgTopInset,
                       width: widthIcon,
                       height: widthIcon))
            
            self.rightImgView!.contentMode = .scaleAspectFit
            self.rightImgView!.image = self.rightImage
            self.addSubview(self.rightImgView!)
        }
    }
    
    func update() {
        
        clipsToBounds = false
        layer.masksToBounds = false
        
        switch self.size {
        case "l": contentEdgeInsets = contentEdgeInsetsL
        case "m": contentEdgeInsets = contentEdgeInsetsM
        default:  contentEdgeInsets = contentEdgeInsetsL
        }
        
        addIcon()
        switch self.rounded {
        case "m": layer.cornerRadius =  DesignSystem.radius.s
        case "l": layer.cornerRadius = DesignSystem.radius.m
        case "full": layer.cornerRadius = size == "l" ? (buttonSizeL.height / 2) : (buttonSizeM.height / 2)
            //            if size == "l" {
            //                layer.cornerRadius = 30
            //            }
            //            if size == "m" {
            //                layer.cornerRadius = 0
            //            }
            
            
        //layer.cornerRadius = rounded == "l" ? 30 : 0
        default: break
        }
        
        switch self.type {
        case "primary":
            self.backgroundColor = self.primaryBackground
            self.layer.backgroundColor = self.primaryBackground.cgColor
            self.layer.shadowColor = self.primaryBackground.cgColor
            self.tintColor = self.primaryLabel
            setTitleColor(primaryLabel, for: .normal)
            
            if shadow {
                self.layer.shadowOffset = DesignSystem.shadow.z2.offset
                self.layer.shadowRadius = DesignSystem.shadow.z2.radius
                self.layer.shadowOpacity = DesignSystem.shadow.z2.opacity
            }
            
            if self.isHighlighted {
                
                UIView.animate(withDuration: 0.1, delay: 0.0, options: [.allowUserInteraction, .curveEaseIn], animations: {
                    
                    if self.scale { self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95) }
                    
                    self.backgroundColor = self.primaryBackground
                    self.layer.backgroundColor =  self.primaryBackground.cgColor
                    self.layer.shadowColor = self.primaryBackground.cgColor
                    
                    if self.shadow {
                        self.layer.shadowOffset = DesignSystem.shadow.z1.offset
                        self.layer.shadowRadius = DesignSystem.shadow.z1.radius
                        self.layer.shadowOpacity = DesignSystem.shadow.z1.opacity
                    }
                    
                }, completion: nil)
            }
            
        case "secondary":
            self.backgroundColor = self.secondaryBackground
            self.layer.backgroundColor = self.secondaryBackground.cgColor
            self.layer.shadowColor = self.secondaryShadow.cgColor
            self.tintColor = self.secondaryLabel
            setTitleColor(secondaryLabel, for: .normal)
            
            if shadow {
                self.layer.shadowOffset = DesignSystem.shadow.z2.offset
                self.layer.shadowRadius = DesignSystem.shadow.z2.radius
                self.layer.shadowOpacity = DesignSystem.shadow.z2.opacity
            }
            
            if self.isHighlighted {
                
                
                
                UIView.animate(withDuration: 0.1, delay: 0.0, options: [.allowUserInteraction, .curveEaseIn], animations: {
                    
                    if self.scale { self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95) }
                    
                    if self.shadow {
                        self.layer.shadowOffset = DesignSystem.shadow.z1.offset
                        self.layer.shadowRadius = DesignSystem.shadow.z1.radius
                        self.layer.shadowOpacity = DesignSystem.shadow.z1.opacity
                    }
                    
                }, completion: nil)
            }
            
        case "link":
            self.backgroundColor = self.linkBackground
            self.layer.backgroundColor = self.linkBackground.cgColor
            self.tintColor = self.linkLabel
            setTitleColor(linkLabel, for: .normal)
            
            if self.isHighlighted {
                
                UIView.animate(withDuration: 0.1, delay: 0.0, options: [.allowUserInteraction, .curveEaseIn], animations: {
                    
                    if self.scale { self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95) }
                    
                }, completion: nil)
            }
            
        case "deleteLink":
            self.backgroundColor = self.deletelinkBackground
            self.layer.backgroundColor = self.deletelinkBackground.cgColor
            self.tintColor = self.deletelinkLabel
            setTitleColor(deletelinkLabel, for: .normal)
            
            if self.isHighlighted {
                
                UIView.animate(withDuration: 0.1, delay: 0.0, options: [.allowUserInteraction, .curveEaseIn], animations: {
                    
                    if self.scale { self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95) }
                    
                }, completion: nil)
            }
            
        case "gray":
            self.backgroundColor = self.grayBackground
            self.layer.backgroundColor = self.grayBackground.cgColor
            self.tintColor = self.grayLabel
            
            setTitleColor(grayLabel, for: .normal)
            setTitleColor(grayLabel, for: .highlighted)
            
            if self.isHighlighted {
                
                UIView.animate(withDuration: 0.1, delay: 0.0, options: [.allowUserInteraction, .curveEaseIn], animations: {
                    
                    if self.scale { self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95) }
                    
                    self.backgroundColor = self.grayBackgroundHighlighted
                    self.layer.backgroundColor = self.grayBackgroundHighlighted.cgColor
                    
                }, completion: nil)
            }
        default: break
        }
        
        titleLabel?.font = UIFontMetrics.default.scaledFont(for: fontLabel)
        titleLabel?.adjustsFontForContentSizeCategory = true
        
    }
    
    // События нажатия и отпускания кнопки
    override public var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                update()
            } else {
                //cancelTracking(with: nil)
                touchUp()
            }
        }
    }
    
    func touchUp() {
        
        UIView.animate(withDuration: 0.1, delay: 0.0, options: [.allowUserInteraction, .curveEaseOut], animations: {
            
            if self.scale { self.transform = CGAffineTransform.identity }
            
            self.update()
            
        }, completion: nil)
    }
}


extension UIButton {
    func loadingIndicator(_ show: Bool) {
        let tag = 888888
        if show {
            self.isEnabled = false
            self.alpha = 9
            let indicator = UIActivityIndicatorView()
            let buttonHeight = self.bounds.size.height
            let buttonWidth = self.bounds.size.width
            indicator.center = CGPoint(x: buttonWidth/2, y: buttonHeight/2)
            indicator.tag = tag
            indicator.color = UIColor.white
            self.setTitle("", for: .disabled)
            self.addSubview(indicator)
            indicator.startAnimating()
            
        } else {
            self.isEnabled = true
            self.alpha = 1.0
            if let indicator = self.viewWithTag(tag) as? UIActivityIndicatorView {
                indicator.stopAnimating()
                indicator.removeFromSuperview()
            }
        }
    }
}
