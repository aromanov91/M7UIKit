//
//  TableCellDemo.swift
//  M7UIKitExamples
//
//  Created by Aleksandr Romanov on 28.10.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit
import M7UIKit

class MessageBubbleDemo: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var messages = [M7ChatCellModel]()
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
        let message = M7ChatCellModel(message: "Приветы")
        messages.append(message)
        
    }
    
    func setupTableView() {
        
        tableview.separatorColor = Colors.gray2
        
        tableview.delegate = self
        tableview.dataSource = self
        
        tableview.register(M7ChatCell.self, forCellReuseIdentifier: "cellId")
        //tableView.contentInset = UIEdgeInsetsMake(20.0, 0.0, 0.0, 0.0)
        
//        tableview.rowHeight = UITableView.automaticDimension
//        tableview.estimatedRowHeight = 44
//        
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
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = tableview.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! M7ChatCell
            cell.backgroundColor = UIColor.white
            cell.accessoryType(type: M7ChatCellType.received)
            let item = messages[indexPath.row]
            cell.refresh(model: item)
            return cell
        
            //print(cellHeight)
            
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 72
//    }

    
}

