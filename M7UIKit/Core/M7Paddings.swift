//
//  M7Paddings.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 04.11.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

public class M7Paddings {
    public enum leading {
        static let s        = CGFloat(M7Space.s)
        static let m        = CGFloat(M7Space.m)
    }
    public enum top {
        static let s        = CGFloat(M7Space.s)
        static let m        = CGFloat(M7Space.m)
    }
    public enum trailing {
        static let s        = CGFloat(-M7Space.s)
        static let m        = CGFloat(-M7Space.m)
    }
    public enum bottom {
        static let s        = CGFloat(-M7Space.s)
        static let m        = CGFloat(-M7Space.m)
    }
    public enum between {
        static let s        = CGFloat(M7Space.xs)
        static let m        = CGFloat(M7Space.s)
    }
}

public enum M7PaddingLeading: CaseIterable {
    case m
    case s
    
    public var padding: CGFloat {
        switch self {
        case .m:
            return M7Paddings.leading.m
        case .s:
            return M7Paddings.leading.m
        }
    }
}

public enum M7PaddingTop: CaseIterable {
    case m
    case s
    
    public var padding: CGFloat {
        switch self {
        case .m:
            return M7Paddings.top.m
        case .s:
            return M7Paddings.top.m
        }
    }
}

public enum M7PaddingTrailing: CaseIterable {
    case m
    case s
    
    public var padding: CGFloat {
        switch self {
        case .m:
            return M7Paddings.trailing.m
        case .s:
            return M7Paddings.trailing.m
        }
    }
}

public enum M7PaddingBottom: CaseIterable {
    case m
    case s
    
    public var padding: CGFloat {
        switch self {
        case .m:
            return M7Paddings.bottom.m
        case .s:
            return M7Paddings.bottom.m
        }
    }
}

public enum M7PaddingBetween: CaseIterable {
    case m
    case s
    
    public var padding: CGFloat {
        switch self {
        case .m:
            return M7Paddings.between.m
        case .s:
            return M7Paddings.between.m
        }
    }
}
