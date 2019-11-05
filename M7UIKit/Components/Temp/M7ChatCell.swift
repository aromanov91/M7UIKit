//
//  M7ChatCell.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 30.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

public struct M7ChatCellModel {
    var message: String
    
    public init(message: String) {
        self.message = message
    }
}

public enum M7ChatCellType {
    case received
    case sent
}

public class M7ChatCell: UITableViewCell {
    
    public let messageLabel: UILabel = {
           let label = UILabel()
           label.text = "Day 1"
           label.textColor = UIColor.black
           label.font = M7Fonts.bodyBold2
           label.translatesAutoresizingMaskIntoConstraints = false
           return label
       }()

    public let messageView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.gray
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var cellHeight = 44
    
    public func accessoryType(type: M7ChatCellType) {
        
        switch type {
        case .received:
            

//            messageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
//                messageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
//                messageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
//                messageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 10).isActive = true
//
//
//            addSubview(messageView)
            
//            messageLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
//            messageLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
//            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
//            messageLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20 ).isActive = true
//
//            addSubview(messageLabel)
            
            
            showOutgoingMessage(text: "An arbitrary jfdjk f lfjkdjfkkj dkj kkfjd kjdkjjkjkjlvjkcjvckjjhjhcvjh hvch vh jcvjh hvcjhk jvch hvcjh hkvjch jkhjk")
            
            

            
        case .sent:
            return
        }
    }
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        showOutgoingMessage(text: "An arbitrary jfdjk f lfjkdjfkkj dkj kkfjd kjdkjjkjkjlvjkcjvckjjhjhcvjh hvch vh jcvjh hvcjhk jvch hvcjh hkvjch jkhjk")
    }

    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        showOutgoingMessage(text: "An arbitrary jfdjk f lfjkdjfkkj dkj kkfjd kjdkjjkjkjlvjkcjvckjjhjhcvjh hvch vh jcvjh hvcjhk jvch hvcjh hkvjch jkhjk")

       
    }
    
    func showOutgoingMessage(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        label.text = text

        let constraintRect = CGSize(width: 0.66 * self.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesLineFragmentOrigin,
                                            attributes: [.font: label.font],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))

        let bubbleSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 20)

        let bubbleView = BubbleView()
        bubbleView.frame.size = bubbleSize
        bubbleView.backgroundColor = .clear
        //self.frame.size = bubbleSize


        bubbleView.frame.origin = CGPoint(x: self.bounds.width , y: 10)
        self.addSubview(bubbleView)

        
        
        label.frame.origin = CGPoint(x: self.frame.width - 8 - bubbleView.frame.width, y: 18)
        self.addSubview(label)
        
        self.cellHeight = Int(bubbleView.frame.height) + 20
    }
    
    public func refresh(model: M7ChatCellModel) {
        messageLabel.text = model.message
    }
    
    override public func sizeThatFits(_ size: CGSize) -> CGSize {
        return CGSize(width: Int(bounds.width), height: cellHeight)
    }

}
