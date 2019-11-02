//
//  TableCellDemo.swift
//  M7UIKitExamples
//
//  Created by Aleksandr Romanov on 28.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit
import M7UIKit

class OneTableView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var data = ["Бля jdkkfrej j jkkj krjrkjjr jkj je klejrkrjjrejkjjkfjkkfjjkjfjk j jjfkl jflkj jf kfj jfd jlk j","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf"]
    
    
    @IBOutlet weak var tableview: UITableView!
    
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
        
        tableview.separatorColor = Colors.gray2
        //tableView.separatorStyle = .none.separatorStyle = .none
        
        tableview.delegate = self
        tableview.dataSource = self
        
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 44
        
        tableview.register(OneTableViewCell.self, forCellReuseIdentifier: "cellIdtoggle")

        
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
        
            let cell = tableview.dequeueReusableCell(withIdentifier: "cellIdtoggle", for: indexPath) as! OneTableViewCell
            //cell.backgroundColor = UIColor.gray
            //cell.card = false
            
        cell.setup(title: data[indexPath.row], subtitle: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .checkmark)
        
            
            

            return cell
        
    
        
    }
    
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 88
        }

    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.section == 0 {
//            return UITableView.automaticDimension
//        } else {
//            return 40
//        }
//    }


    

    
    
    
}

