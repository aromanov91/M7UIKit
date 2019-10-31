//
//  SwitchRow.swift
//  GrayOnWhiteKit
//
//  Created by Aleksandr Romanov on 04.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

@IBDesignable public class SwitchRow: UIView {
    
    @IBOutlet public weak var myLabel: UILabel!

    @IBOutlet weak var tralling: NSLayoutConstraint!
    
    @IBOutlet weak var leading: NSLayoutConstraint!
    
    @IBInspectable public var textLabelText: String {
       get {
         return myLabel.text!
       }
       
       set(textLabelText) {
         myLabel.text = textLabelText
       }
     }
    
    @IBInspectable
    public var edgeToEdge: Bool = false {
        didSet {
            if edgeToEdge {
                self.leading.constant = 0
                self.tralling.constant = 0
            }
        }
    }
    
    var view: UIView!
    var nibName: String = "SwitchRow"
     
     override init(frame: CGRect) {
       super.init(frame: frame)
       setup()
     }
     
     required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
       setup()
     }
    
    func loadFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
      let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        

      
      return view
    }
    
    func setup() {
      view = loadFromNib()
      view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
      
      addSubview(view)
    }

}
