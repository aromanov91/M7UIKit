//
//  DatePicker.swift
//  GrayOnWhiteKit
//
//  Created by Aleksandr Romanov on 06.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

@IBDesignable public class DatePicker: UIView {
    
    @IBOutlet weak var datePickerTitleLabel: UILabel!
    
    @IBOutlet weak var sohowDatePickerButton: UIButton!
    
    var view: UIView!
    var nibName: String = "DatePicker"
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    public func loadFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }
    
    public func setup() {
        view = loadFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(view)
    }
    
    @IBAction public func showDatePickerButtonTap(_ sender: Any) {
        
        let datePicker = Bundle.main.loadNibNamed("DatePicker1", owner: self, options: nil)?[0] as! DatePickerView
        
        view.addSubview(datePicker)
        
    
       //let datePickerView = Bundle.main.loadNibNamed("DateSelectModal", owner: self, options: nil).first as! DateSelectModal
//        var view: DateSelectModal!
//
//        let nibName1: String = "DateSelectModal"
//
//        let bundle = Bundle(for: type(of: self))
//        let nib = UINib(nibName: nibName1, bundle: bundle)
//          let datePickerView = nib.instantiate(withOwner: self, options: nil).first as! DateSelectModal
//        view.addSubview(datePickerView)
    }
}
