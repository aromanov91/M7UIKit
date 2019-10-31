//
//  MyView.swift
//  Xib
//
//  Created by Ivan Akulov on 06/06/16.
//  Copyright © 2016 Ivan Akulov. All rights reserved.
//

import UIKit

@IBDesignable public class MyView: UIView {

  @IBOutlet public weak var myLabel: UILabel!
  
  @IBInspectable public var textLabelText: String {
    get {
      return myLabel.text!
    }
    
    set(textLabelText) {
      myLabel.text = textLabelText
    }
  }
  
  var view: UIView!
  var nibName: String = "MyView"
  
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
