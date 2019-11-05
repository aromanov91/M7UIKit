//
//  Fonts.swift
//  GrayOnWhiteKit
//
//  Created by Aleksandr Romanov on 12.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

public final class M7Fonts {
    
    /// Bold 34pt
    public static let largeTitle = UIFont(name: "Montserrat-Bold", size: 34) ?? UIFont.systemFont(ofSize: 34, weight: .bold)
    
    /// Bold 28pt
    public static let title1 = UIFont(name: "Montserrat-Bold", size: 28) ?? UIFont.systemFont(ofSize: 28, weight: .bold)
    
    /// Bold 22pt
    public static var title2 = UIFont(name: "Montserrat-Bold", size: 22) ?? UIFont.systemFont(ofSize: 22, weight: .bold)
    
    /// Bold 20pt
    public static var title3 = UIFont(name: "Montserrat-Bold", size: 20) ?? UIFont.systemFont(ofSize: 20, weight: .bold)
    
    /// Regular 16pt
    public static var body1: UIFont = UIFont(name: "Montserrat-Regular", size: 16) ?? UIFont.systemFont(ofSize: 16, weight: .regular)
    
    /// Bold 16pt
    public static var bodyBold1: UIFont = UIFont(name: "Montserrat-SemiBold", size: 16) ?? UIFont.systemFont(ofSize: 16, weight: .semibold)
    
    /// Regular 14pt
    public static var body2: UIFont = UIFont(name: "Montserrat-Regular", size: 14) ?? UIFont.systemFont(ofSize: 14, weight: .regular)
    
    /// Bold 14pt
    public static var bodyBold2: UIFont = UIFont(name: "Montserrat-SemiBold", size: 14) ?? UIFont.systemFont(ofSize: 14, weight: .semibold)
    
    /// Bold 16pt
    public static var button: UIFont = UIFont(name: "Montserrat-SemiBold", size: 16) ?? UIFont.systemFont(ofSize: 16, weight: .semibold)
    
    /// Bold 12pt
    public static var caption = UIFont(name: "Montserrat-Bold", size: 12) ?? UIFont.systemFont(ofSize: 12, weight: .bold)
}

public enum M7TextStyle {
    case largeTitle
    case title1
    case title2
    case title3
    case body1
    case bodyBold1
    case body2
    case bodyBold2
    case button
    case caption
    
    public var font: UIFont {
        switch self {
        case .largeTitle:
            return M7Fonts.largeTitle
        case .title1:
            return M7Fonts.title1
        case .title2:
            return M7Fonts.title2
        case .title3:
            return M7Fonts.title3
        case .body1:
            return M7Fonts.body1
        case .bodyBold1:
            return M7Fonts.bodyBold1
        case .body2:
            return M7Fonts.body2
        case .bodyBold2:
            return M7Fonts.bodyBold2
        case .button:
            return M7Fonts.button
        case .caption:
            return M7Fonts.caption
        }
    }
}

