//
//  M7Label.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 04.11.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

class M7Label: UILabel {
    
    public var style: M7TextStyle = .body1 {
        didSet {
            initialize()
        }
    }
    
    public var colorStyle: M7LabelColor = .primary {
        didSet {
            initialize()
        }
    }

    public init(style: M7TextStyle = .body1, colorStyle: M7LabelColor = .primary) {
        self.style = style
        self.colorStyle = colorStyle
        super.init(frame: .zero)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        initialize()
    }
    
    private func initialize() {
//        font = style
//        textColor = UIColor.black
    }

}
