//
//  Base.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 17.11.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

public enum N7BaseStyle: String {
    case primary = "primary"
    case secondary = "secondary"
}

public enum N7BaseRounded: String {
    case l = "l"
    case m = "m"
}

public enum M7BaseElevation: Int {
    case z1
    case z2
    case z3
    case z4
}

@IBDesignable
class M7Base: UIView {
    
    @IBInspectable public var type: String = "primary" {
        didSet {
            if type != oldValue {
                initialize()
            }
        }
    }
    
    
    @IBInspectable public var rounded: String = "" {
        didSet {
            if rounded != oldValue {
                initialize()
            }
        }
    }
    
    
    @IBInspectable public var elevation: Int = 1 {
        didSet {
            if elevation != oldValue {
                initialize()
            }
        }
    }
    
    
    public let card: UIView = {
        let view = UIView()
        
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.clipsToBounds = false
        view.layer.masksToBounds = false
        //view.backgroundColor = UIColor.gray
        //view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    func initialize() {
        
        addSubview(card)
        card.frame = bounds
        
        switch self.rounded {
        case "m": layer.cornerRadius =  DesignSystem.radius.s
        case "l": layer.cornerRadius = DesignSystem.radius.m
        default: break
        }
        
        switch self.type {
        case "primary":
            self.backgroundColor = M7Colors.white
        case "secondary":
            self.backgroundColor = M7Colors.gray
        default:
            break
        }
        
        switch self.elevation {
        case 1:
            self.layer.shadowOffset = DesignSystem.shadow.z1.offset
            self.layer.shadowRadius = DesignSystem.shadow.z1.radius
            self.layer.shadowOpacity = DesignSystem.shadow.z1.opacity
        case 2:
            self.layer.shadowOffset = DesignSystem.shadow.z2.offset
            self.layer.shadowRadius = DesignSystem.shadow.z2.radius
            self.layer.shadowOpacity = DesignSystem.shadow.z2.opacity
        default:
            break
        }
        
}
}
