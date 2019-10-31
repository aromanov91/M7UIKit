//
//  AlertError.swift
//  wallet
//
//  Created by Alexander Romanov on 22.06.2019.
//  Copyright © 2019 Alexander Romanov. All rights reserved.
//
import UIKit

public class Alert {
    
    public static let current = Alert()
    
    // Показ подтверждения
    public func Susses(title: String?, message: String?, closeButtonText: String?, controller: UIViewController) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let closeButton = UIAlertAction(title: closeButtonText, style: .default, handler: nil)
        alert.addAction(closeButton)
        controller.present(alert, animated: true, completion: nil)
        
    }

    // Показ ошибок
    public func Error(title: String?, message: String?, closeButtonText: String?, controller: UIViewController) {

        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let closeButton = UIAlertAction(title: closeButtonText, style: .default, handler: nil)
        alert.addAction(closeButton)
        controller.present(alert, animated: true, completion: nil)
        
    }
    
}

