//
//  M7TableViewCell.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 27.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

public enum OneCellAccessoryType {
    case none
    case disclosureIndicator
    case detailButton
    case checkmark
    case toggle
}

public enum CellTipe {
    case title
    case titleSubtitle
    case titleIcon
    case titleSubtitleIcon
}

public class OneTableViewCell: UITableViewCell {
    

    
    private var cellTypeSelect: CellTipe = .title
    
    //    override public func sizeThatFits(_ size: CGSize) -> CGSize {
    //        return CGSize(width: 375, height: 150)
    //    }
    private struct Constants {
        static var paddingLeading  = M7Paddings.leading.m
        static var paddimgBetween  = M7Paddings.between.m
        static var paddingTop      = M7Paddings.top.m
        static var paddingTrailing = M7Paddings.trailing.m
        static var paddingBottom   = M7Paddings.bottom.m
        //static let rightMargin: CGFloat = -80
    }
    
    private struct LabelStyles {
        static let titleFont: M7LabelStyle = .bodyBold1
        static let subtitleFont: M7LabelStyle = .body2
        static let detailFont: M7LabelStyle = .body1
        
        static let titleColor: M7LabelColor = .primary
        static let subtitleColor: M7LabelColor = .secondary
        static let detailColor: M7LabelColor = .secondary
    }
    
    public var card: Bool = false {
        didSet {
            if card != oldValue {
                initialize()
            }
        }
    }
    
    static let cardViewColor = M7Colors.gray
    
    public var cellAccessoryType: OneCellAccessoryType = .none {
        didSet {
            if cellAccessoryType != oldValue {
                initialize()
            }
            //            setNeedsLayout()
            //            invalidateIntrinsicContentSize()
        }
    }
    
    public let title: M7Label = {
        var label = M7Label(font: LabelStyles.titleFont, color: LabelStyles.titleColor)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public let subtitle: M7Label = {
        let label = M7Label(font: LabelStyles.subtitleFont, color: LabelStyles.titleColor)
        label.numberOfLines = 0
        label.text = ""
        //label.isHidden = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public let detail: M7Label = {
        let label = M7Label(font: LabelStyles.detailFont, color: LabelStyles.detailColor)
        label.text = ""
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.gray
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var iconName = ""
    
    public let icon: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage()
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = UIColor.gray
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
//    public func setup(title: String, subtitle: String, detail: String = "", card: Bool = false, accessoryType: OneCellAccessoryType = .none, icon: String) {
//        self.title.text = title
//        self.subtitle.text = subtitle
//        self.detail.text = detail
//        self.card = card
//        self.icon.image = UIImage(named: icon)
//        cellAccessoryType = accessoryType
//        self.cellTypeSelect = .titleSubtitleIcon
//
//        setNeedsLayout()
//        invalidateIntrinsicContentSize()
//    }
    
//    public func setup(title: String, subtitle: String = "", detail: String = "", card: Bool = false, accessoryType: OneCellAccessoryType = .none) {
//        self.title.text = title
//        self.subtitle.text = subtitle
//        self.detail.text = detail
//        self.card = card
//        cellAccessoryType = accessoryType
//        self.cellTypeSelect = .titleSubtitle
//
//        setNeedsLayout()
//        invalidateIntrinsicContentSize()
//    }
    
    public func setup(title: String, subtitle: String = "", detail: String = "", card: Bool = false, type: CellTipe = .title, accessoryType: OneCellAccessoryType = .none, icon: String = "") {
        self.title.text = title
        self.subtitle.text = subtitle
        self.detail.text = detail
        self.card = card
        self.icon.image = UIImage(named: icon)
        self.cellAccessoryType = accessoryType
        self.cellTypeSelect = type
        
        setNeedsLayout()
        invalidateIntrinsicContentSize()
    }
    
//    public func setup(title: String, detail: String = "", card: Bool = false, accessoryType: OneCellAccessoryType = .none) {
//        self.title.text = title
//        self.detail.text = detail
//        self.card = card
//        cellAccessoryType = accessoryType
//        self.cellTypeSelect = .title
//
//        setNeedsLayout()
//        invalidateIntrinsicContentSize()
//    }
    
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialize()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    //        open override func layoutSubviews() {
    //            super.layoutSubviews()
    //
    //            initialize()
    //        }
    
    
    //    open override var bounds: CGRect {
    //        didSet {
    //            if bounds.width != oldValue.width {
    //                invalidateIntrinsicContentSize()
    //            }
    //        }
    //    }
    //    open override var frame: CGRect {
    //        didSet {
    //            if frame.width != oldValue.width {
    //                invalidateIntrinsicContentSize()
    //            }
    //        }
    //    }
    //
    //  override public var intrinsicContentSize: CGSize { return CGSize(width: 375, height: 150) }
    
    public func initialize() {
        
        if iconName != "" {
            print("iconName ====================")
        }
        
        print("====================")
        
        print(icon.image)
        
        if icon.image == nil {
            print("nil nil nil nil nil nil nil ============")
        }
        
        if card == true {
            addSubview(cardView)
            NSLayoutConstraint.activate([
                cardView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
                cardView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
                cardView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
                cardView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                cardView.heightAnchor.constraint(equalToConstant: 100)
            ])
        }
        
        self.selectionStyle = .none
        
        self.addSubview(icon)
        

        self.separatorInset = UIEdgeInsets(top: 0, left: Constants.paddingLeading, bottom: 0, right: 0)
        self.layoutMargins = UIEdgeInsets(top: 0, left: Constants.paddingLeading, bottom: 0, right: 0)
        
        self.addSubview(title)
        self.addSubview(subtitle)
        
        //        title.heightAnchor.constraint(equalToConstant: 200).isActive = true
        //        title.widthAnchor.constraint(equalToConstant: 200).isActive = true
        //title.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        title.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: Constants.paddingLeading).isActive = true
        title.topAnchor.constraint(equalTo: self.topAnchor, constant: Constants.paddingTop).isActive = true
        
        //title.bottomAnchor.constraint(equalTo: subtitle.topAnchor, constant: 20).isActive = true
        
        //        subtitle.heightAnchor.constraint(equalToConstant: 200).isActive = true
        //        subtitle.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        subtitle.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: Constants.paddingLeading).isActive = true
        subtitle.topAnchor.constraint(equalTo: title.bottomAnchor).isActive = true
        
        subtitle.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: Constants.paddingBottom).isActive = true
        //subtitle.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        switch cellTypeSelect {
        case .titleSubtitle:
            break
            
            
        default:
            break
        }
        
        
        

        
        switch cellAccessoryType {
        case .none:
            title.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: Constants.paddingTrailing).isActive = true
            subtitle.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: Constants.paddingTrailing).isActive = true
            
        case .disclosureIndicator:
            let cellDisclosureIndicator = UIImageView(frame: CGRect(x: 4, y: 50, width: 24, height: 24))
            cellDisclosureIndicator.contentMode = .scaleAspectFit
            let disclosureIndicatorImage = UIImage(named: "DisclosureIndicator")
            cellDisclosureIndicator.image = disclosureIndicatorImage
            cellDisclosureIndicator.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(cellDisclosureIndicator)
            cellDisclosureIndicator.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: card == true ? -40 : -20).isActive = true
            cellDisclosureIndicator.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            cellDisclosureIndicator.widthAnchor.constraint(equalToConstant: 24).isActive = true
            cellDisclosureIndicator.heightAnchor.constraint(equalToConstant: 24).isActive = true
            
            self.addSubview(detail)
            detail.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: card == true ? -64 : -44).isActive = true
            detail.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            
            title.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: Constants.paddingTrailing - detail.frame.width - Constants.paddimgBetween).isActive = true
            subtitle.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: Constants.paddingTrailing - detail.frame.width - Constants.paddimgBetween).isActive = true
            
        case .detailButton:
            let detailButton = Button(type: N7ButtonStyle.gray, size: N7ButtonSize.m, rounded: N7ButtonRounded.full)
            detailButton.translatesAutoresizingMaskIntoConstraints = false
            detailButton.setTitle("Button", for: .normal)
            self.addSubview(detailButton)
            detailButton.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: card == true ? -40 : -20).isActive = true
            detailButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            detailButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
            
            title.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: Constants.paddingTrailing - 100 - Constants.paddimgBetween).isActive = true
            subtitle.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: Constants.paddingTrailing - 100 - Constants.paddimgBetween).isActive = true
            
        case .toggle:
            let toggle = M7Switch()
            toggle.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(toggle)
            toggle.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: card == true ? -40 : -20).isActive = true
            toggle.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            
            title.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: Constants.paddingTrailing - toggle.frame.width - Constants.paddimgBetween).isActive = true
            subtitle.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: Constants.paddingTrailing - toggle.frame.width - Constants.paddimgBetween).isActive = true
            
        case .checkmark:
            let cellCheckmark = UIImageView(frame: CGRect(x: 4, y: 50, width: 32, height: 32))
            cellCheckmark.contentMode = .scaleAspectFit
            let cellCheckmarkSelectedImage = UIImage(named: "CheckmarkSelected")
            cellCheckmark.image = cellCheckmarkSelectedImage
            cellCheckmark.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(cellCheckmark)
            cellCheckmark.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: card == true ? -40 : -20).isActive = true
            cellCheckmark.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            cellCheckmark.widthAnchor.constraint(equalToConstant: 32).isActive = true
            cellCheckmark.heightAnchor.constraint(equalToConstant: 32).isActive = true
            
            title.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: Constants.paddingTrailing - cellCheckmark.frame.width - Constants.paddimgBetween).isActive = true
            subtitle.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: Constants.paddingTrailing - cellCheckmark.frame.width - Constants.paddimgBetween).isActive = true
        }
    }
}
