//
//  DSDatePicker.swift
//  Player X
//
//  Created by Alexander Romanov on 26/09/2018.
//  Copyright © 2018 Alexander Romanov. All rights reserved.
//

import UIKit
import Foundation

class DSColorSelector: UIPickerView {
    
    var selectTime = Date()
    
    let pickerViewValues = ["Any", "Amad", "Oleg", "John", "Mike", "Olga", "Elena", "Angelika", "Bazil", "Arnold"]

    

    
    // MARK: - Выбор даты
    func alert(title: String, message: String, style: UIAlertController.Style, controller: UIViewController) {
        
        // Название и описание всплывашки
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let height:NSLayoutConstraint = NSLayoutConstraint(item: alertController.view!, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 400)
        alertController.view.addConstraint(height)
        
        // Создание алерт контроллера
        let pickerFrame = CGRect(x: 0, y: 20, width: 359, height: 280) // CGRectMake(left), top, width, height) - left and top are like margins
        let pickerView = UIPickerView(frame: pickerFrame)
        

        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        // возвращает количество элементов в компоненте в Picker View
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            // оно соответсвует количеству элементов в массиве pickerViewValues
            return pickerViewValues.count
        }
        // возвращает значение для очередной строки в Picker View
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            // оно соответствует значению соответсвующего элемента в массиве
            return pickerViewValues[row]
        }
        
        //  Добавление пикера в алерт контроллер
        alertController.view.addSubview(pickerView)
        
        
        
        // Создание кнопки "Выбрать дату"
        let action = UIAlertAction(title: "Выбрать дату", style: .default) { (action) in
            //let text = alertController.textFields?.first
            //controller.loginButton.setTitle("\(self.selectTime)", for: .normal)
            
        }
        
//        pickerView.addTarget(self, action: #selector(self.daraPickerChenge(paramdatePicker:)), for: .valueChanged)
        
        // Добавление кнопки "Выбрать дату"
        alertController.addAction(action)
        
        /// Кнопка отменить
        alertController.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        
        //  Показ контроллера
        controller.present(alertController, animated: true, completion: nil)
    }
    
    
    @objc func daraPickerChenge(paramdatePicker: UIDatePicker) {
        
        //        if paramdatePicker.isEqual( .pickerView) {
        //        print("data Chenge: = ", paramdatePicker.date)
        
        self.selectTime = paramdatePicker.date
        
        //headerLabel.text = "\(paramdatePicker.date)"
        //      }
        
    }
}
