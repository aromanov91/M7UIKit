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
    
    private var data = ["On the other hand","We denounce","Indignation and dislike","Men who are so","Beguiled and demoralized"]

    var sections = ["Title", "Title and Subtitle", "Icon title", "Icon Title and Subtitle"]
    var itemsInSections = [["1A", "1B", "1C", "1B", "1C"], ["2A", "2B","2A", "2B","2A",], ["3A", "3B", "3C", "3D", "3E"], ["3A", "3B", "3C", "3D", "3E"]]
    
    var identifires = [["titleNone","titleDisclosureIndicator","titleDetailButton","titleCheckmark","titleToogle"],
                       ["titleSubitileNone","titleSubitileDisclosureIndicator","titleSubitileDetailButton","titleSubitileCheckmark","titleSubitileToogle"],
                       ["imagetitleNone","imagetitleDisclosureIndicator","imagetitleDetailButton","imagetitleCheckmark","imagetitleToogle"],
                       ["imagetitleSubitileNone","imagetitleSubitileDisclosureIndicator","imagetitleSubitileDetailButton","imagetitleSubitileCheckmark","imagetitleSubitileToogle"]]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView() {
        
        tableView.separatorColor = M7Colors.gray2
        //tableView.separatorStyle = .none.separatorStyle = .none
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[0][0])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[0][1])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[0][2])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[0][3])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[0][4])
        
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[1][0])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[1][1])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[1][2])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[1][3])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[1][4])
        
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[2][0])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[2][1])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[2][2])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[2][3])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[2][4])
        
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[3][0])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[3][1])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[3][2])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[3][3])
        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: identifires[3][4])
        
        view.addSubview(tableView)
        
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection
        section: Int) -> String? {
        return self.sections[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.itemsInSections[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            switch  indexPath.row {
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[0][1], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           detail: "10",
                           card: false,
                           accessoryType: .disclosureIndicator)
                return cell
            case 2:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[0][2], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .detailButton)
                return cell
            case 3:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[0][3], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .checkmark)
                return cell
            case 4:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[0][4], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .toggle)
                return cell
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[0][0], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .none)
                return cell
            }
        case 1:
            switch  indexPath.row {
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[1][1], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           subtitle: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .disclosureIndicator)
                return cell
                
            case 2:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[1][2], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           subtitle: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .detailButton)
                return cell
                
            case 3:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[1][3], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           subtitle: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .checkmark)
                return cell
                
            case 4:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[1][4], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           subtitle: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .toggle)
                return cell
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[1][0], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           subtitle: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .none)
                return cell
            }
        case 2:
            switch  indexPath.row {
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[2][1], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .disclosureIndicator,
                           icon: "Apple")
                return cell
            case 2:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[2][2], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .detailButton,
                           icon: "Apple")
                return cell
            case 3:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[2][3], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .checkmark,
                           icon: "Apple")
                return cell
            case 4:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[2][4], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .toggle,
                           icon: "Apple")
                return cell
                
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[2][0], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .none,
                           icon: "Apple")
                
                return cell
            }
        case 3:
            switch  indexPath.row {
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[3][1], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           subtitle: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .disclosureIndicator,
                           icon: "Apple2")
                return cell
                
                
            case 2:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[3][2], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           subtitle: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .detailButton,
                           icon: "Apple2")
                return cell
                
            case 3:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[3][3], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           subtitle: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .checkmark,
                           icon: "Apple2")
                return cell
                
            case 4:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[3][4], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           subtitle: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           accessoryType: .toggle,
                           icon: "Apple2")
                return cell
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: identifires[3][0], for: indexPath) as! OneTableViewCell
                cell.setup(title: data[indexPath.row],
                           subtitle: data[indexPath.row],
                           detail: data[indexPath.row],
                           card: false,
                           type: .titleSubtitleIcon,
                           accessoryType: .none,
                           icon: "Apple2")
                return cell
            }
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "def", for: indexPath)
            cell.textLabel?.text = "Section = \(indexPath.section), cell = \(indexPath.row)"
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return  UITableView.automaticDimension
    }
    
}

