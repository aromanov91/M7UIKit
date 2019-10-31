//
//  Extensions.swift
//  CustomFonts
//
//  Created by Attia Mo on 11/12/17.
//  Copyright © 2017 https://Attiamo.me All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    @objc var substituteFontName : String {
        get { return self.font!.fontName }
        set { self.font = UIFont(name: newValue, size: (self.font?.pointSize)!) }
    }
}

extension UIFont {
    class func appRegularFontWith( size:CGFloat ) -> UIFont{
        return  UIFont(name: Constants.App.regularFont, size: size)!
    }
    
    class func appBoldFontWith( size:CGFloat ) -> UIFont{
        return  UIFont(name: Constants.App.boldFont, size: size)!
    }
    
    class func appSemiBoldFontWith( size:CGFloat ) -> UIFont{
        
        
        
        if let font1 =  UIFont(name: Constants.App.semiBoldFont, size: size) {
            return font1
        }
        
        return UIFont.systemFont(ofSize: 26, weight: .bold)
    }
}
