//
//  M7Label.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 04.11.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

@IBDesignable public class M7Label: UILabel {
    
    var paragraphStyle = NSMutableParagraphStyle()
    
    var kerning: CGFloat = 1.0
    
    @IBInspectable public var selectFont: String = "" {
        didSet {
            if selectFont != oldValue {
                initialize()
            }
        }
    }
    
    @IBInspectable public var selectColor: String = "" {
        didSet {
            if selectColor != oldValue {
                initialize()
            }
        }
    }
    
    
    public var fontLabel: M7LabelStyle = .body1 {
        didSet {
            initialize()
        }
    }
    
    public var colorLabel: M7LabelColor = .primary {
        didSet {
            initialize()
        }
    }
    
    public init(font: M7LabelStyle = .body1, color: M7LabelColor = .primary) {
        self.fontLabel = font
        self.colorLabel = color
        super.init(frame: .zero)
        initialize()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    
    private func initialize() {
        updateFont()
        updateColor()
        updateLineHeight()
    }
    
    private func updateFont() {
        switch self.selectFont {
        case "largeTitle": font = M7LabelStyle.largeTitle.font
        case "title1"    : font = M7LabelStyle.title1.font
        case "title2"    : font = M7LabelStyle.title2.font
        case "title3"    : font = M7LabelStyle.title3.font
        case "body1"     : font = M7LabelStyle.body1.font
        case "bodyBold1" : font = M7LabelStyle.bodyBold1.font
        case "body2"     : font = M7LabelStyle.body2.font
        case "bodyBold2" : font = M7LabelStyle.bodyBold2.font
        case "button"    : font = M7LabelStyle.button.font
        case "caption"   : font = M7LabelStyle.caption.font
        default: font = fontLabel.font
        }
    }
    
    private func updateLineHeight() {
        
        if selectFont != "" {
            switch self.selectFont {
            case "largeTitle":
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.largeTitle
                kerning = M7Fonts.Kerning.largeTitle
            case "title1":
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.title1
                kerning = M7Fonts.Kerning.title1
            case "title2":
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.title2
                kerning = M7Fonts.Kerning.title2
            case "title3":
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.title3
                kerning = M7Fonts.Kerning.title3
            case "body1" :
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.body1
                kerning = M7Fonts.Kerning.body1
            case "bodyBold1":
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.body1
                kerning = M7Fonts.Kerning.body1
            case "body2":
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.body2
                kerning = M7Fonts.Kerning.body2
            case "bodyBold2":
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.body2
                kerning = M7Fonts.Kerning.body2
            case "button":
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.body1
                kerning = M7Fonts.Kerning.body1
            case "caption":
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.caption
                kerning = M7Fonts.Kerning.caption
            default: break
            }
            
        } else {
            switch self.fontLabel {
            case .largeTitle :
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.largeTitle
                kerning = M7Fonts.Kerning.largeTitle
            case .title1:
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.title1
                kerning = M7Fonts.Kerning.title1
            case .title2:
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.title2
                kerning = M7Fonts.Kerning.title2
            case .title3:
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.title3
                kerning = M7Fonts.Kerning.title3
            case .body1:
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.body1
                kerning =  M7Fonts.Kerning.body1
            case .bodyBold1:
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.body1
                kerning = M7Fonts.Kerning.body1
            case .body2:
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.body2
                kerning = M7Fonts.Kerning.body2
            case .bodyBold2:
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.body2
                kerning = M7Fonts.Kerning.body2
            case .button:
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.body1
                kerning = M7Fonts.Kerning.body1
            case .caption:
                paragraphStyle.lineHeightMultiple = M7Fonts.LineHeights.caption
                kerning =  M7Fonts.Kerning.caption
            }
        }
        
        attributedText = NSMutableAttributedString(string: text ?? "Label", attributes: [NSAttributedString.Key.kern: kerning, NSAttributedString.Key.paragraphStyle: paragraphStyle])
    }
    
    private func updateColor() {
        switch self.selectColor {
        case "primary"  : textColor = M7LabelColor.primary.color
        case "secondary": textColor = M7LabelColor.secondary.color
        case "link"     : textColor = M7LabelColor.link.color
        case "white"    : textColor = M7LabelColor.white.color
        case "success"  : textColor = M7LabelColor.success.color
        case "error"    : textColor = M7LabelColor.error.color
        case "warning"  : textColor = M7LabelColor.warning.color
        case "disabled" : textColor = M7LabelColor.disabled.color
        default: textColor = colorLabel.color
        }
    }
    
}

