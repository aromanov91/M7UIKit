//
//  TableViewController.swift
//  UITableViewCellCode
//
//  Created by Aleksandr Romanov on 24.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit
import M7UIKit

class TableViewController: UITableViewController {
    

    private var data = ["Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let cell = self.tableView.dequeueReusableCell(withIdentifier: "M7TableViewCell", for: indexPath) as! M7TableViewCell
//        cell.backgroundColor = UIColor.white
//
//        let content = CellModel(name: "dgfd", discription: "fgfd", detail: "fsdsd")
//        cell.refresh(content)
//        return cell
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.textLabel?.text = self.data[indexPath.row]

        cell.simpleSwitch.addTarget(self, action: #selector(perfrAdd(param:)), for: .valueChanged)

        return cell
        
    }
    
   
    @objc func perfrAdd(param: UISwitch) {

        if param.isOn {
            print("Switch is On")
        } else {
            print("Switch is Off")
        }
        
        print("Add click")
    }




}
