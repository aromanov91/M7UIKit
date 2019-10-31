//
//  ModalSelect.swift
//  M7UIKit
//
//  Created by Aleksandr Romanov on 20.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit

public class ModalSelectController: UIViewController {
   @IBOutlet private weak var titleLabel: UILabel!
//   @IBOutlet private weak var closeButton: UIButton! {
//      didSet {
//         closeButton.addTarget(self, action:  #selector(self.closeButtonAction), for: .touchUpInside)
//      }
//   }
   public var model: ModalSelectModel!
   public init() {
      super.init(nibName: "ModalSelectView", bundle: Bundle(for: ModalInfoController.self))
   }
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   override public func viewDidLoad() {
      super.viewDidLoad()
      titleLabel.text = model.title
   }
}
@objc extension ModalSelectController {
   private func closeButtonAction() {
      self.dismiss(animated: true, completion: nil)
   }
}
