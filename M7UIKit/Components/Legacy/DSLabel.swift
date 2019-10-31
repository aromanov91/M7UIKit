//
//  DSLabel.swift
//  Player X
//
//  Created by Alexander Romanov on 01/10/2018.
//  Copyright © 2018 Alexander Romanov. All rights reserved.
//

import UIKit
import Foundation

class DSLabel: UILabel {
    
    var placeholder = "0"
    var alignment: NSTextAlignment = .center

    func normal() {
        //frame = CGRect(x: 30, y: 80, width: 315, height: 26)
        textColor = DesignSystem.color.black
        text = placeholder
        font = UIFont.boldSystemFont(ofSize: 21)
        textAlignment = alignment
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    required override init(frame: CGRect) {
        super.init(frame: frame)
        normal()
    }
    
    init(frame: CGRect, placeholder: String, alignment: NSTextAlignment, size: Int) {
        super.init(frame: frame)
        normal()
        self.placeholder = placeholder
        self.alignment = alignment
        self.font = UIFont.boldSystemFont(ofSize: CGFloat(size))
        
    }
    

}

