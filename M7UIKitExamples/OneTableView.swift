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
    
    private var data = ["Бля jdkkfrej j jkkj krjrkjjr jkj je klejrkrjjrejkjjkfjkkfjjkjfjk j jjfkl jflkj jf kfj jfd jlk j","Загаловок","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля jdkkfrej j jkkj krjrkjjr jkj je klejrkrjjrejkjjkfjkkfjjkjfjk j jj","Пиздец","djsfjsdk","fdgffsds jdkkfrej j jkkj krjrkjjr jkj je klejrkrjjrejkjjkfjkkfjjkjfjk j jj","dfsdfsdf"]
    
    
    @IBOutlet weak var tableView: UITableView!
    
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
        
        tableView.separatorColor = M7Colors.gray2
        //tableView.separatorStyle = .none.separatorStyle = .none
        
        tableView.delegate = self
        tableView.dataSource = self
        
         tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableView.automaticDimension
       
        //tableView.reloadData()
        
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "cellIdtoggle")
        
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor)
        ])
        
                tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 1
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdtoggle", for: indexPath) as! OneTableViewCell
        //cell.backgroundColor = UIColor.gray
        //cell.card = true
        
        //cell.cellAccessoryType = .detailButton
       // cell.paddingBottom = 
        
       
        
        cell.setup(title: data[indexPath.row], subtitle: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .toggle)
        
        
        return cell
    }
    

    
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 60
//    }
//
    
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            if indexPath.section == 0 {
                return  UITableView.automaticDimension
            } else {
                return 80
            }
        }
    
    
    
    
    
    
    
}

