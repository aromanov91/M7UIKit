//
//  Functions.swift
//  wallet
//
//  Created by Alexander Romanov on 22.06.2019.
//  Copyright © 2019 Alexander Romanov. All rights reserved.
//
import UIKit

public class Transition {
    
    static let current = Transition()
    
    public func Storyboard(storiboardTitle: String, destination: String, controller: UIViewController) {
        
        let storyboard = UIStoryboard(name: storiboardTitle, bundle: nil)
        let destinationController = storyboard.instantiateViewController(withIdentifier: destination)
        
        //let modalStyle = UIModalTransitionStyle.coverVertical
       
        //controller.modalTransitionStyle = .crossDissolve
        
        
        destinationController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        
        //controller.modalPresentationStyle = .fullScreen
        controller.present(destinationController, animated: true, completion: nil)
        print("Susses: Go to \(destination)")
    }
    
    public func Storyboard(storiboardTitle: String, destination: String, controller: UIViewController, animation: Bool) {
        
        let storyboard = UIStoryboard(name: storiboardTitle, bundle: nil)
        let destinationController = storyboard.instantiateViewController(withIdentifier: destination)
        
        //let modalStyle = UIModalTransitionStyle.coverVertical
       
        //controller.modalTransitionStyle = .crossDissolve
        
        
        destinationController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        
        //controller.modalPresentationStyle = .fullScreen
        controller.present(destinationController, animated: animation, completion: nil)
        print("Susses: Go to \(destination)")
    }
    
    public func StoryboardNav(storiboardTitle: String, destination: String, controller: UIViewController) {
        
        let storyboard = UIStoryboard(name: storiboardTitle, bundle: nil)
        let destinationController = storyboard.instantiateViewController(withIdentifier: destination)
        
        //let modalStyle = UIModalTransitionStyle.coverVertical
       
        //controller.modalTransitionStyle = .crossDissolve
        
        
        destinationController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        
        //controller.modalPresentationStyle = .fullScreen
        controller.show(destinationController, sender: nil)  
        print("Susses: Go to \(destination)")
    }
    
    
    public func StoryboardModal(storiboardTitle: String, destination: String, controller: UIViewController) {
        
        let storyboard = UIStoryboard(name: storiboardTitle, bundle: nil)
        let destinationController = storyboard.instantiateViewController(withIdentifier: destination)
        
        //let modalStyle = UIModalTransitionStyle.coverVertical
       
        //controller.modalTransitionStyle = .crossDissolve
        
        
        destinationController.modalPresentationStyle = UIModalPresentationStyle.formSheet
        
        //controller.modalPresentationStyle = .fullScreen
        controller.show(destinationController, sender: nil)
        print("Susses: Go to \(destination)")
    }
    
}
