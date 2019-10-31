//
//  DesignSystem.swift
//  Player X
//
//  Created by Alexander Romanov on 12.09.2018.
//  Copyright © 2018 Alexander Romanov. All rights reserved.
//

import UIKit
import Foundation

public struct DesignSystem {
    
    static let current = DesignSystem()
    
    //let theme = DefaultTheme()
    
    // MARK: - Colors
    enum color {
        public static let violet         = UIColor(named: "violet")
        public static let ligtViole      = #colorLiteral(red: 0.9294117647, green: 0.6784313725, blue: 0.9843137255, alpha: 1)
        public static let violetDark     = #colorLiteral(red: 0.4823529412, green: 0.3019607843, blue: 0.8745098039, alpha: 1)
        public static let Blue           = #colorLiteral(red: 0.6509803922, green: 0.4941176471, blue: 0.9843137255, alpha: 1)
        public static let white          = UIColor(named: "white")
        public static let gray           = UIColor(named: "gray")
        public static let grayExtraLight = UIColor(named: "grayExtraLight")
        public static let grayLight      = UIColor(named: "grayLight")
        public static let grayDark       = UIColor(named: "grayDark")
        public static let grayText       = UIColor(named: "grayText")
        public static let background     = UIColor(named: "background")
        public static let black          = UIColor(named: "black")
        public static let textField      = UIColor(named: "textField")
    }
    
    // MARK: - Spaces
    enum space {
        
        /// 4
        static let xxxs         = 4
        
        /// 8
        static let xxs          = 8
        
        /// 12
        static let xs           = 12
        
        /// 16
        static let s            = 16
        
        /// 24
        static let m            = 24
        
        /// 32
        static let l            = 32
        
        /// 48
        static let xl           = 48
        
        /// 96
        static let xxl          = 76
        
        /// 144
        static let xxxl         = 96
    }
    
    // MARK: - Radius
    enum radius {
        //static let xs: CGFloat  = 4
        static let s: CGFloat   = 8
        static let m: CGFloat   = 12
        //static let l: CGFloat   = 16
        //static let xl: CGFloat  = 24
    }
    
    enum border {
        enum Width {
            static let s: CGFloat = 1
            static let m: CGFloat = 2
        }
//        enum Color {
//            static let normal = DesignSystem.Color.gray.cgColor
//            static let select = DesignSystem.Color.grayDark.cgColor
//        }
    }
    
    class shadowCreate {
        let offset: CGSize
        let radius: CGFloat
        let opacity: Float
        
        init(offset: CGSize, radius: CGFloat, opacity: Float) {
            self.offset = offset
            self.radius = radius
            self.opacity = opacity
        }
    }
    
    // Shadows
    enum shadow {
        
        /// For Buttons Normal
       static let z1            = shadowCreate(offset: CGSize(width: 0.0, height: 12.0), radius: 8, opacity: 0.24)
        
        /// For Buttons Select
        static let z2           = shadowCreate(offset: CGSize(width: 0.0, height: 16.0), radius: 12, opacity: 0.32)
    }
    
    enum margin {
        enum leading {
            static let s        = CGFloat(space.s)
            static let m        = CGFloat(space.l)
        }
        enum top {
            static let s        = CGFloat(space.s)
            static let m        = CGFloat(space.l)
        }
        enum trailing {
            static let s        = CGFloat(-space.s)
            static let m        = CGFloat(-space.l)
        }
        enum bottom {
            static let s        = CGFloat(-space.s)
            static let m        = CGFloat(-space.l)
        }
        enum between {
            static let s        = CGFloat(space.s)
            static let m        = CGFloat(space.m)
        }
    }
    
//    enum Components {
//        enum Button {
//            static let s        = CGFloat(space.xl)
//            static let m        = CGFloat(space.xxl - space.xxs)
//        }
//        enum TextField {
//            static let s        = CGFloat(space.l + space.xxs)
//            static let m        = CGFloat(space.xl + space.xxs)
//        }
//    }
}
