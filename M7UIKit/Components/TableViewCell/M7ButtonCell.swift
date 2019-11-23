//
//  M7ButtonCell.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 18.11.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

public enum CellButtonType {
case link
case delete
}

public class M7ButtonCell: UITableViewCell {
    
    private var buttonType: CellButtonType = .link  {
        didSet {
            if buttonType != oldValue {
                updateType()
            }
            setNeedsLayout()
            invalidateIntrinsicContentSize()
        }
    }

    
    public var button: M7Button = {
        var button = M7Button(type: N7ButtonType.link, size: N7ButtonSize.m, rounded: N7ButtonRounded.full)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentHorizontalAlignment = .left
        return button
    }()

    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialize()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    public func setup(buttonTitle: String = "", type: CellButtonType = .link) {
           self.buttonType = type
        button.setTitle(buttonTitle, for: .normal)
    }
    
    
    
     public func initialize() {
        self.addSubview(button)
       
        button.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor).isActive = true
        button.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 72).isActive = true
        button.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    func updateType() {
        switch buttonType {
        case .link:
            break
        case .delete:
            button.tintColor = M7Colors.error
            button.setTitleColor(M7Colors.error, for: .normal)
            button.setTitleColor(M7Colors.error, for: .highlighted)
           
        }
    }
}

