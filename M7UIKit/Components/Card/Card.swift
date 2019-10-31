//
//  Card.swift
//  GrayOnWhiteKit
//
//  Created by Aleksandr Romanov on 05.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

@IBDesignable public class Card: UIView {
    
    @IBOutlet var cardView: UIView!
    
    @IBInspectable public var kind: Bool = false {
        didSet {
            if kind {
                
            }
        }
    }
    
    @IBInspectable public var elevation: Int {
        get {
            return 0
        }
    }
    
    @IBInspectable
    public var rounded: Bool = true {
        
        didSet {
            if rounded {
                view.layer.cornerRadius = 24//DesignSystem.Radius.s
            }
        }
    }
    
    @IBInspectable public var roundedSize: String {
       get {
         return "x"
       }
       
       set(roundedSize) {
       }
     }

    
    var view: UIView!
    var nibName: String = "Card"
    
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
        view.clipsToBounds = false
        view.layer.masksToBounds = false
        
        addSubview(view)
    }
    
    
    
    
}
