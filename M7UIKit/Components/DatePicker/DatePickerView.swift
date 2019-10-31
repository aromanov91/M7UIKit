//
//  DatePickerView.swift
//  XIB
//
//  Created by Aleksandr Romanov on 15.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

@IBDesignable public class DatePickerView: UIView {

    @IBOutlet weak var selectButton: UIButton!

    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction public func SelectButtonTap(_ sender: UIButton) {
        
        let df = DateFormatter()
        
        label.text = df.string(from: datePicker.date)
        
    }
    
    @IBAction public func cancelButtonTap(_ sender: UIButton) {
        removeFromSuperview()
    }
}
