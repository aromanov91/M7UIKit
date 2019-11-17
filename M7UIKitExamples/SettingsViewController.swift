//
//  SettingsViewController.swift
//  M7UIKitExamples
//
//  Created by Aleksandr Romanov on 17.11.2019.
//  Copyright © 2019 Aleksandr Romanov. All rights reserved.
//

import UIKit
import M7UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let cellIdentifier = "SettingsCell"
    
    let theme = ThemeManager.currentTheme()
    
    private let themesName = ["Default","Blue"]
    
    private let themes = [Theme.defaultTheme, Theme.theme2]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        print("================")
        print(theme)
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
    @IBAction func closeVC(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return themesName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if theme == themes[indexPath.row] {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! OneTableViewCell
            cell.setup(title: themesName[indexPath.row],
                       accessoryType: .radioSelect)
            return cell
            
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! OneTableViewCell
            cell.setup(title: themesName[indexPath.row],
                       accessoryType: .radioUnselect)
            return cell
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        ThemeManager.applyTheme(theme: themes[indexPath.row])
        
        //self.tableView.reloadData()
        
        
        //self.tableView.deselectRow(at: indexPath, animated: true)
        
        self.dismiss(animated: true, completion: nil)
        
        
    }
}
