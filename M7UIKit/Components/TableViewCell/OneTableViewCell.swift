//
//  M7TableViewCell.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 27.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

//public class CellModel {
//    var name: String
//    var discription: String
//    var detail: String
//
//    public init(name: String, discription: String, detail: String){
//        self.name = name
//        self.discription = discription
//        self.detail = detail
//    }
//}

public enum OneCellAccessoryType {
    case none
    case disclosureIndicator
    case detailButton
    case checkmark
    case toggle
}

@IBDesignable public class OneTableViewCell: UITableViewCell {
    
    @IBInspectable public var card: Bool = false {
        didSet {
            if card != oldValue {
                 initialize()
            }
        }
    }
    

    
    @IBInspectable public let title: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Day 1"
        label.textColor = UIColor.black
        label.font = Fonts.bodyBold
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public let subtitle: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = ""
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public let detail: UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        return label
    }()
    
    public let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.gray
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public var cellAccessoryType: OneCellAccessoryType = .none
    
    public func setup(title: String, subtitle: String = "", detail: String = "", card: Bool = false, accessoryType: OneCellAccessoryType = .none) {
        self.title.text = title
        self.subtitle.text = subtitle
        self.detail.text = detail
        self.cellAccessoryType = accessoryType
        self.card = card
    
        setNeedsLayout()
        invalidateIntrinsicContentSize()
    }
    

    private let rightMargin: CGFloat = 40
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        initialize()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
         initialize()
    }

    public func initialize() {
        
        if card {
            addSubview(cardView)
            NSLayoutConstraint.activate([
                cardView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
                cardView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
                cardView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
                cardView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        }
        self.addSubview(title)
        self.addSubview(subtitle)
        self.selectionStyle = .none
        
        

//        title.heightAnchor.constraint(equalToConstant: 200).isActive = true
//        title.widthAnchor.constraint(equalToConstant: 200).isActive = true
        //title.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        title.leftAnchor.constraint(equalTo: self.leftAnchor, constant: card == true ? 40 : 20 ).isActive = true
        title.topAnchor.constraint(equalTo: self.topAnchor, constant:20).isActive = true
        title.rightAnchor.constraint(equalTo: self.rightAnchor, constant: rightMargin).isActive = true

//        subtitle.heightAnchor.constraint(equalToConstant: 200).isActive = true
//        subtitle.widthAnchor.constraint(equalToConstant: 200).isActive = true

        subtitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: card == true ? 40 : 20 ).isActive = true
        subtitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 0).isActive = true
        subtitle.rightAnchor.constraint(equalTo: self.rightAnchor, constant: self.rightMargin).isActive = true
        //subtitle.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        switch cellAccessoryType {
            
        case .none:
            break
            
        case .disclosureIndicator:
            let cellDisclosureIndicator = UIImageView(frame: CGRect(x: 4, y: 50, width: 24, height: 24))
            cellDisclosureIndicator.contentMode = .scaleAspectFit
            let disclosureIndicatorImage = UIImage(named: "DisclosureIndicator")
            cellDisclosureIndicator.image = disclosureIndicatorImage
            cellDisclosureIndicator.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(cellDisclosureIndicator)
            cellDisclosureIndicator.rightAnchor.constraint(equalTo: self.rightAnchor, constant: card == true ? -40 : -20).isActive = true
            cellDisclosureIndicator.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            cellDisclosureIndicator.widthAnchor.constraint(equalToConstant: 24).isActive = true
            cellDisclosureIndicator.heightAnchor.constraint(equalToConstant: 24).isActive = true
            
            self.addSubview(detail)
            detail.rightAnchor.constraint(equalTo: self.rightAnchor, constant: card == true ? -64 : -44).isActive = true
            detail.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            
        case .detailButton:
            let detailButton = Button(type: N7ButtonStyle.gray, size: N7ButtonSize.m, rounded: N7ButtonRounded.full)
            detailButton.translatesAutoresizingMaskIntoConstraints = false
            detailButton.setTitle("Button", for: .normal)
            self.addSubview(detailButton)
            detailButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: card == true ? -40 : -20).isActive = true
            detailButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            detailButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
            
        case .toggle:
            let toggle = M7Switch()
            //toggle.isOn = true
            toggle.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(toggle)
            toggle.rightAnchor.constraint(equalTo: self.rightAnchor, constant: card == true ? -40 : -20).isActive = true
            toggle.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            
        case .checkmark:
            let cellCheckmark = UIImageView(frame: CGRect(x: 4, y: 50, width: 32, height: 32))
            cellCheckmark.contentMode = .scaleAspectFit
            let cellCheckmarkSelectedImage = UIImage(named: "CheckmarkSelected")
            cellCheckmark.image = cellCheckmarkSelectedImage
            cellCheckmark.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(cellCheckmark)
            cellCheckmark.rightAnchor.constraint(equalTo: self.rightAnchor, constant: card == true ? -40 : -20).isActive = true
            cellCheckmark.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            cellCheckmark.widthAnchor.constraint(equalToConstant: 32).isActive = true
            cellCheckmark.heightAnchor.constraint(equalToConstant: 32).isActive = true
        }
        
    }


    
    override public func sizeThatFits(_ size: CGSize) -> CGSize {
        return CGSize(width: 375, height: 120)
    }
    
    
}
