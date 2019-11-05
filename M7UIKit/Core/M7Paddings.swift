//
//  File.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 04.11.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

public class M7PaddingsSizes {
    enum leading {
        static let s        = CGFloat(M7Space.s)
        static let m        = CGFloat(M7Space.m)
    }
    enum top {
        static let s        = CGFloat(M7Space.s)
        static let m        = CGFloat(M7Space.m)
    }
    enum trailing {
        static let s        = CGFloat(-M7Space.s)
        static let m        = CGFloat(-M7Space.m)
    }
    enum bottom {
        static let s        = CGFloat(-M7Space.s)
        static let m        = CGFloat(-M7Space.m)
    }
    enum between {
        static let s        = CGFloat(M7Space.xs)
        static let m        = CGFloat(M7Space.s)
    }
}

@objc public enum M7Padding: Int, CaseIterable {
    case leading
    case top
    case trailing
    case bottom
    case between
    
    public var padding: CGFloat {
        switch self {
        case .leading:
            return M7PaddingsSizes.leading.m
        case .top:
            return M7PaddingsSizes.top.m
        case .trailing:
            return M7PaddingsSizes.trailing.m
        case .bottom:
            return M7PaddingsSizes.bottom.m
        case .between:
            return M7PaddingsSizes.between.m
            
        }
    }
}
