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

public enum M7cellAccessoryType {
    case none
    case disclosureIndicator
    case detailButton
    case checkmark
    case toggle
}

@IBDesignable public class M7TableViewCell: UITableViewCell {
    
    public func accessoryType(type: M7cellAccessoryType) {
        
        switch type {
            
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
            toggle.isOn = true
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
    
    @IBInspectable public var card: Bool = false {
        didSet {
            if card != oldValue {
                setup()
            }
        }
    }
    
//    public func refresh() {
//        title.text = model.name
//        subtitle.text = model.discription
//        detail.text = model.detail
//        
//    }
    
    public let cellView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    @IBInspectable public let title: UILabel = {
        let label = UILabel()
        label.text = "Day 1"
        label.textColor = UIColor.black
        label.font = M7Fonts.title3
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public let subtitle: UILabel = {
        let label = UILabel()
        label.text = "Day 1"
        label.textColor = UIColor.black
        label.font = M7Fonts.body1
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
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    
    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
//    override public func prepareForReuse() {
//        super.prepareForReuse()
//
//        self.title.text = nil
//        self.subtitle.text = nil
//        self.detail.text = nil
//
//    }
//
    
    
//    override public func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//        setup()
//    }
    
    public func setup() {
        
        if card { self.cellView.backgroundColor = M7Colors.gray
            
            addSubview(cellView)
            NSLayoutConstraint.activate([
                cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
                cellView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
                cellView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
                cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        }
        
        self.addSubview(title)
        self.addSubview(subtitle)
        self.selectionStyle = .none

        //title.heightAnchor.constraint(equalToConstant: 200).isActive = true
        //title.widthAnchor.constraint(equalToConstant: 200).isActive = true
        title.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        title.leftAnchor.constraint(equalTo: self.leftAnchor, constant: card == true ? 40 : 20 ).isActive = true
        //title.bottomAnchor.constraint(equalTo: )

        //subtitle.heightAnchor.constraint(equalToConstant: 200).isActive = true
        subtitle.widthAnchor.constraint(equalToConstant: 200).isActive = true
        //subtitle.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        subtitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: card == true ? 40 : 20 ).isActive = true
        subtitle.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 10 ).isActive = true
        
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
        
    }
    
    
    
}
