//
//  ThemeManager.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 17.11.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//
import UIKit
import Foundation

public enum Theme: Int {

    case defaultTheme, theme2
    
    // MARK: - Colors
    enum AppColors {
        static let red    = #colorLiteral(red: 0.9960784314, green: 0.3450980392, blue: 0.3568627451, alpha: 1)
        static let orange = #colorLiteral(red: 0.8941176471, green: 0.5568627451, blue: 0, alpha: 1)
        static let yellow = #colorLiteral(red: 1, green: 0.8862745098, blue: 0.2941176471, alpha: 1)
        static let violet = #colorLiteral(red: 0.6509803922, green: 0.4901960784, blue: 0.9803921569, alpha: 1)
        static let green  = #colorLiteral(red: 0.3098039216, green: 0.7647058824, blue: 0.3098039216, alpha: 1)
        static let blue   = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        static let black  = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        static let white  = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

    var primary: UIColor {
        switch self {
        case .defaultTheme:
            return AppColors.violet
        case .theme2:
            return AppColors.blue
        }
    }
}

// Enum declaration
let SelectedThemeKey = "SelectedTheme"

// This will let you use a theme in the app.
public class ThemeManager {

    // ThemeManager
    public static func currentTheme() -> Theme {
        if let storedTheme = (UserDefaults.standard.value(forKey: SelectedThemeKey) as AnyObject).integerValue {
            return Theme(rawValue: storedTheme)!
        } else {
            return .theme2
        }
    }

    public static func applyTheme(theme: Theme) {
        // First persist the selected theme using NSUserDefaults.
        UserDefaults.standard.setValue(theme.rawValue, forKey: SelectedThemeKey)
        UserDefaults.standard.synchronize()

        // You get your current (selected) theme and apply the main color to the tintColor property of your application’s window.
      
    }
}
