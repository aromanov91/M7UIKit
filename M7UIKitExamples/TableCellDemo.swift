//
//  TableCellDemo.swift
//  M7UIKitExamples
//
//  Created by Aleksandr Romanov on 28.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit
import M7UIKit

class TableCellDemo: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var data = ["Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf"]
    
    
    @IBOutlet weak var tableview: UITableView!
    
  //  open var insetsContentViewsToSafeArea: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
//        let item = CellModel(name: "Вибрация", discription: "Офигенная", detail: "Пульсирующая")
//        data.append(item)
//         let item2 = CellModel(name: "ddd", discription: "vvvvv", detail: "dfdfsdfsd")
//        data.append(item2)
//        data.append(item)
//        data.append(item)
//        data.append(item)
//        data.append(item)
//        data.append(item2)
//        data.append(item)
//        data.append(item)
//        data.append(item)
//        data.append(item)
//        data.append(item)
//        data.append(item)
//        data.append(item)
//        data.append(item)
//        data.append(item)
//        data.append(item)
//        data.append(item)
        
    }
    
    func setupTableView() {
        
        tableview.separatorColor = M7Colors.gray2
        //tableView.separatorStyle = .none.separatorStyle = .none
        
        tableview.delegate = self
        tableview.dataSource = self
        
       // var insetsContentViewsToSafeArea: Bool = true
        
        
        tableview.register(M7TableViewCell.self, forCellReuseIdentifier: "cellId")
        tableview.register(M7TableViewCell.self, forCellReuseIdentifier: "cellIddisclosureIndicator")
            tableview.register(M7TableViewCell.self, forCellReuseIdentifier: "cellIddetailButton")
                tableview.register(M7TableViewCell.self, forCellReuseIdentifier: "cellIdtoggle")
                tableview.register(M7TableViewCell.self, forCellReuseIdentifier: "cellIdcheckmark")
                tableview.register(M7TableViewCell.self, forCellReuseIdentifier: "cellIddisclosureIndicator")
        
        view.addSubview(tableview)
        
        self.tableview.translatesAutoresizingMaskIntoConstraints = false
        

        // Fill containing view
        self.tableview.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.tableview.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        self.tableview.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.tableview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 1
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch  indexPath.row {
//        case 0:
//            let cell = tableview.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! M7TableViewCell
//            cell.backgroundColor = UIColor.white
//            cell.card = false
//            cell.accessoryType(type: M7cellAccessoryType.none)
//            let item = data[indexPath.row]
//            cell.refresh(item)
//            return cell
//
//        case 1:
//            let cell = tableview.dequeueReusableCell(withIdentifier: "cellIddisclosureIndicator", for: indexPath) as! M7TableViewCell
//            cell.backgroundColor = UIColor.white
//            cell.card = false
//            cell.accessoryType(type: M7cellAccessoryType.disclosureIndicator)
//            let item = data[indexPath.row]
//            cell.refresh(item)
//            return cell
//
//
//        case 2:
//            let cell = tableview.dequeueReusableCell(withIdentifier: "cellIddetailButton", for: indexPath) as! M7TableViewCell
//            cell.backgroundColor = UIColor.white
//            cell.card = false
//            cell.accessoryType(type: M7cellAccessoryType.detailButton)
//            let item = data[indexPath.row]
//            cell.refresh(item)
//            return cell
//
//
//        case 3:
//            let cell = tableview.dequeueReusableCell(withIdentifier: "cellIdtoggle", for: indexPath) as! M7TableViewCell
//            cell.backgroundColor = UIColor.white
//            cell.card = false
//            cell.accessoryType(type: M7cellAccessoryType.toggle)
//            let item = data[indexPath.row]
//            cell.refresh(item)
//            return cell
//
//        case 4:
//            let cell = tableview.dequeueReusableCell(withIdentifier: "cellIdcheckmark", for: indexPath) as! M7TableViewCell
//            cell.backgroundColor = UIColor.white
//            cell.card = false
//            cell.accessoryType(type: M7cellAccessoryType.checkmark)
//            let item = data[indexPath.row]
//            cell.refresh(item)
//            return cell
            
        default:
            let cell = tableview.dequeueReusableCell(withIdentifier: "cellIdtoggle", for: indexPath) as! M7TableViewCell
            //cell.backgroundColor = UIColor.gray
            cell.card = false
            cell.accessoryType(type: M7cellAccessoryType.toggle)
            let item = data[indexPath.row]
            cell.title.text = item
            cell.subtitle.text = item
            cell.detail.text = item
            return cell
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
    

    
    
    
}

