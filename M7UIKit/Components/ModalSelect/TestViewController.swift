//
//  TestViewController.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 20.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

public class TestViewController: UIViewController {



       public init() {
          super.init(nibName: "TestViewController", bundle: Bundle(for: TestViewController.self))
       }
       required init?(coder aDecoder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
       }
       override public func viewDidLoad() {
          super.viewDidLoad()
          //titleLabel.text = model.title
       }
    }
@objc extension ModalSelectController {
   private func closeButtonAction() {
      self.dismiss(animated: true, completion: nil)
   }
}
