//
//  GenerealViewController.swift
//  M7UIKitExamples
//
//  Created by Aleksandr Romanov on 17.11.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit
import M7UIKit

class GenerealViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private let cellIdentifier = "ComponentCell"
    
    private let componentsNames = ["Buttons","TableView Cells","Labels","Base"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        tableView.separatorColor = M7Colors.gray2
        //tableView.separatorStyle = .none.separatorStyle = .none
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: cellIdentifier)

        view.addSubview(tableView)
        
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        
    }
}

extension GenerealViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return componentsNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! OneTableViewCell
        cell.setup(title: componentsNames[indexPath.row],
                  accessoryType: .disclosureIndicator)
        
        
       return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: componentsNames[indexPath.row], sender: nil)
        
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
}
