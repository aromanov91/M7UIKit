//
//  M7Label.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 04.11.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit


//public enum N7LabelStyle: String {
//    case primary = "primary"
//    case secondary = "secondary"
//    case gray = "gray"
//    case link = "link"
//}
//
//public enum N7ButtonRounded: String {
//    case full = "full"
//    case l = "l"
//    case m = "m"
//}

public class M7Label: UILabel {
    
    public var style = M7TextStyle.body1 {
        didSet {
            initialize()
        }
    }
    
    public var colorStyle: M7LabelColor = .primary {
        didSet {
            initialize()
        }
    }


    private var _textColor: UIColor?
    private var currentTextColor: UIColor { return _textColor ?? colorStyle.color }
    
    
    
    public init(style: M7TextStyle = .body1, colorStyle: M7LabelColor = .primary) {
        self.style = style
        self.colorStyle = colorStyle
        super.init(frame: .zero)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    private func initialize() {
        textColor = colorStyle.color
        font = style.font
    }

}
