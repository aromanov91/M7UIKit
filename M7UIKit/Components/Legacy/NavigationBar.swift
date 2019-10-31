//
//  NavigationBar.swift
//  wallet
//
//  Created by Alexander Romanov on 23.06.2019.
//  Copyright © 2019 Alexander Romanov. All rights reserved.
//

import UIKit

class NavigationBar {
    
    static let current = NavigationBar()
    
    func White(title: String?, controller: UIViewController) {
        
        controller.title = title
        controller.navigationController?.navigationBar.prefersLargeTitles = true
        controller.navigationController?.navigationBar.shadowImage = UIImage()
        controller.navigationController?.navigationBar.isTranslucent = false

        
    }
    
}
