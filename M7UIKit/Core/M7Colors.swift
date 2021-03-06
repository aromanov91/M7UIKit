//
//  Colors.swift
//  GrayOnWhiteKit
//
//  Created by Aleksandr Romanov on 10.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

public class M7Colors {
    
    // MARK: - Colors
    
    /// Основной цвет
   public static var primary: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return ThemeManager.currentTheme().primary
                } else {
                    return UIColor.systemPurple
                }
            }
        } else {
            return ThemeManager.currentTheme().primary
        }
    }

    /// Второй акцентный цвет
    public static var secondary: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return #colorLiteral(red: 0.6509803922, green: 0.4901960784, blue: 0.9803921569, alpha: 1)
                } else {
                    return #colorLiteral(red: 0.6509803922, green: 0.4901960784, blue: 0.9803921569, alpha: 1)
                }
            }
        } else {
            return #colorLiteral(red: 0.6509803922, green: 0.4901960784, blue: 0.9803921569, alpha: 1)
        }
    }
    
    /// Белый
    public static var white: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                } else {
                    return #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
                }
            }
        } else {
            return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    /// Черный
    public static var black: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                } else {
                    return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                }
            }
        } else {
            return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
    
    // Цвет ошибок
    public static var error: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return #colorLiteral(red: 0.9960784314, green: 0.3450980392, blue: 0.3568627451, alpha: 1)
                } else {
                    return UIColor.systemRed
                }
            }
        } else {
            return #colorLiteral(red: 0.9960784314, green: 0.3450980392, blue: 0.3568627451, alpha: 1)
        }
    }
    
    // Цвет предуперждений
    public static var warning: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return #colorLiteral(red: 0.8941176471, green: 0.5568627451, blue: 0, alpha: 1)
                } else {
                    return UIColor.systemOrange
                }
            }
        } else {
            return #colorLiteral(red: 0.8941176471, green: 0.5568627451, blue: 0, alpha: 1)
        }
    }
    
    public static var success: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return #colorLiteral(red: 0.3098039216, green: 0.7647058824, blue: 0.3098039216, alpha: 1)
                } else {
                    return UIColor.systemGreen
                }
            }
        } else {
            return #colorLiteral(red: 0.3098039216, green: 0.7647058824, blue: 0.3098039216, alpha: 1)
        }
    }
    
    public static var labelPrimary: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
                } else {
                    return UIColor.label
                }
            }
        } else {
            return #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        }
    }
    
    public static var labelSecondary: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return #colorLiteral(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
                } else {
                    return UIColor.secondaryLabel
                }
            }
        } else {
            return #colorLiteral(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
        }
    }
    
    public static var separator: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return #colorLiteral(red: 0.9019607843, green: 0.9019607843, blue: 0.9019607843, alpha: 1)
                } else {
                    return UIColor.separator
                }
            }
        } else {
            return #colorLiteral(red: 0.9019607843, green: 0.9019607843, blue: 0.9019607843, alpha: 1)
        }
    }
    
    public static var link: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return ThemeManager.currentTheme().primary
                } else {
                    return ThemeManager.currentTheme().primary
                }
            }
        } else {
            return ThemeManager.currentTheme().primary
        }
    }
    
    public static var gray: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return #colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9607843137, alpha: 1)
                } else {
                    return UIColor.gray
                }
            }
        } else {
            return #colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9607843137, alpha: 1)
        }
    }
    
    public static var gray2: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return #colorLiteral(red: 0.8901960784, green: 0.8901960784, blue: 0.8901960784, alpha: 1)
                } else {
                    return UIColor.systemGray2
                }
            }
        } else {
            return #colorLiteral(red: 0.8901960784, green: 0.8901960784, blue: 0.8901960784, alpha: 1)
        }
    }
    
    public static var gray3: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
                } else {
                    return UIColor.systemGray3
                }
            }
        } else {
            return #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        }
    }
    
    public static var gray4: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
                } else {
                    return UIColor.systemGray4
                }
            }
        } else {
            return #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        }
    }
    
    public static var gray5: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
                } else {
                    return UIColor.systemGray5
                }
            }
        } else {
            return #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        }
    }
    
    public static var gray6: UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .light {
                    return #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
                } else {
                    return UIColor.systemGray6
                }
            }
        } else {
            return #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        }
    }
}

public enum M7LabelColor {
    case primary
    case secondary
    case link
    case white
    case success
    case error
    case warning
    case disabled

    public var color: UIColor {
        switch self {
        case .primary:
            return M7Colors.labelPrimary
        case .secondary:
            return M7Colors.labelSecondary
        case .link:
            return M7Colors.link
        case .white:
            return M7Colors.white
        case .success:
            return M7Colors.success
        case .error:
            return M7Colors.error
        case .warning:
            return M7Colors.warning
        case .disabled:
            return M7Colors.gray5
        }
    }
}
