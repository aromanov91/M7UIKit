//
//  M7NavigationBar.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 17.11.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

@IBDesignable class M7NavigationBar: UINavigationBar {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    private func initialize() {
        prefersLargeTitles = true
        
        
        
        
        let attrs = [
            NSAttributedString.Key.foregroundColor: M7Colors.labelPrimary,
            NSAttributedString.Key.font: M7Fonts.bodyBold1
        ]
        
        let attrsLarge = [
            NSAttributedString.Key.foregroundColor: M7Colors.labelPrimary,
            NSAttributedString.Key.font: M7Fonts.largeTitle
        ]
        
        self.largeTitleTextAttributes = attrsLarge
        self.titleTextAttributes = attrs
        
        
        if #available(iOS 13.0, *) {
            let buttonAppearance = UIBarButtonItemAppearance()
            buttonAppearance.normal.titleTextAttributes = [.foregroundColor : UIColor.darkGray]
            
        }
        
        
        
        // titlePositionAdjustment = UIOffset(horizontal: 20, vertical: 30)
        //
        //self.navigationController?.navigationBar.shadowImage = UIImage()
        //self.navigationController?.navigationBar.isTranslucent = true
        //self.navigationController?.navigationBar.barTintColor = DesignSystem.Color.background
        //self.navigationController?.navigationBar.backgroundColor = DesignSystem.Color.background
        //self.navigationController!.navigationBar.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 144.0)
        
        //        if #available(iOS 13.0, *) {
        //            backgroundColor = UIColor.black
        //        } else {
        //            // Fallback on earlier versions
        //        }
        
    }
    
}
