//
//  ModalSelectButton.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 20.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

public class ModalSelectButton: UIView {

    var view: UIView!
    var nibName: String = "ModalSelectButton"
    
    let transiton = Transition()
    
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
    
    @IBAction func buttonTap(_ sender: Any) {
        
//        let modalViewController = ModalSelectController()
//           //modalViewController.modalPresentationStyle = .overCurrentContext
//        self.(modalViewController, animated: true, completion: nil)
        
        
        
        let vc = ModalSelectController()
        vc.model = ModalSelectModel(title: "Hello")
        //view.present(vc, animated: true, completion: nil)
     
        
        

        
        
        //self.show(vc, animated: true, completion: nil)
//
//        self.present(vc, animated: true, completion: nil)
        
    }
    
    

}
