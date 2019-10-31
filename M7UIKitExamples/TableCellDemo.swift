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
    
    private var data = [CellModel]()
    
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
        let item = CellModel(name: "Вибрация", discription: "Офигенная", detail: "Пульсирующая")
        data.append(item)
        data.append(item)
        data.append(item)
        data.append(item)
        data.append(item)
        data.append(item)
        
    }
    
    func setupTableView() {
        
        tableview.separatorColor = Colors.gray2
        //tableView.separatorStyle = .none.separatorStyle = .none
        
        tableview.delegate = self
        tableview.dataSource = self
        
        tableview.register(M7TableViewCell.self, forCellReuseIdentifier: "cellId")
        
        view.addSubview(tableview)
        
        NSLayoutConstraint.activate([
            tableview.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tableview.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            tableview.leftAnchor.constraint(equalTo: self.view.leftAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 1
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch  indexPath.row {
        case 0:
            let cell = tableview.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! M7TableViewCell
            cell.backgroundColor = UIColor.white
            cell.card = false
            cell.accessoryType(type: M7cellAccessoryType.none)
            let item = data[indexPath.row]
            cell.refresh(item)
            return cell
            
        case 1:
            let cell = tableview.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! M7TableViewCell
            cell.backgroundColor = UIColor.white
            cell.card = false
            cell.accessoryType(type: M7cellAccessoryType.disclosureIndicator)
            let item = data[indexPath.row]
            cell.refresh(item)
            return cell
            
            
        case 2:
            let cell = tableview.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! M7TableViewCell
            cell.backgroundColor = UIColor.white
            cell.card = false
            cell.accessoryType(type: M7cellAccessoryType.detailButton)
            let item = data[indexPath.row]
            cell.refresh(item)
            return cell
            
            
        case 3:
            let cell = tableview.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! M7TableViewCell
            cell.backgroundColor = UIColor.white
            cell.card = false
            cell.accessoryType(type: M7cellAccessoryType.toggle)
            let item = data[indexPath.row]
            cell.refresh(item)
            return cell
            
        case 4:
            let cell = tableview.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! M7TableViewCell
            cell.backgroundColor = UIColor.white
            cell.card = false
            cell.accessoryType(type: M7cellAccessoryType.checkmark)
            let item = data[indexPath.row]
            cell.refresh(item)
            return cell
            
        default:
            return UITableViewCell()
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
    
    
    
}

