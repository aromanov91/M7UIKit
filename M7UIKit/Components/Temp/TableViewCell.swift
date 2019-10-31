//
//  TableViewCell.swift
//  UITableViewCellCode
//
//  Created by Aleksandr Romanov on 23.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit


@IBDesignable public class TableViewCell: UITableViewCell {
    
    @IBInspectable var leadingImage: UIImage? {
        didSet {
            if leadingImage != oldValue {
                update()
            }
        }
    }
    
    
    @IBInspectable public var cellType: String = "" {
        didSet {
            if cellType != oldValue {
                update()
            }
        }
    }
    
    
    
    public let simpleSwitch = UISwitch()


    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.textLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.accessoryType = .detailButton
        self.detailTextLabel?.text = "Ебой"
        self.detailTextLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        self.textLabel?.text = "Ячейка"
        
        update()
        



    
        
//        let accessoryView = UIImageView(frame: CGRect(x: 4, y: 30, width: 10, height: 16))
//        accessoryView.contentMode = .scaleAspectFit
//        let accessoryImageIcon = UIImage(named: "Image")
//        accessoryView.image = accessoryImageIcon
//
//        self.accessoryView = accessoryView
        

        //simpleSwitch.addTarget(self, action: #selector(perfrAdd), for: .valueChanged)
        
        simpleSwitch.isOn = true
        self.accessoryView = simpleSwitch
        

        //self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: simpleSwitch)
        
        
    }
    
    func update() {
        
        if leadingImage != nil {
            let image = leadingImage
            self.imageView?.image = image
        }
        
        
        
    }

    
  public func perfrAdd() {
        print("Add click")
    }
    
    override public func prepareForReuse() {
        super.prepareForReuse()

    }

}
