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
    
    //    private var data = ["Бля jdkkfrej j jkkj krjrkjjr jkj je klejrkrjjrejkjjkfjkkfjjkjfjk j jjfkl jflkj jf kfj jfd jlk j","Загаловок","Djsfjsdk","Fdgffsds","Dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля jdkkfrej j jkkj krjrkjjr jkj je klejrkrjjrejkjjkfjkkfjjkjfjk j jj","Пиздец","djsfjsdk","fdgffsds jdkkfrej j jkkj krjrkjjr jkj je klejrkrjjrejkjjkfjkkfjjkjfjk j jj","dfsdfsdf"]
    
    private var data = ["Suitcase Fusion is a professional font manager that lets you preview, manage, and activate, all your fonts in one place. And now, with their handy new plugin, Suitcase Fusion integrates directly with Sketch so you always have the right fonts, when you need them. Find out more over on the","Suitcase Fusion is a professional font manager that lets you preview, manage, and activate, all your fonts in one place. And now, with their handy new plugin, Suitcase Fusion integrates directly with Sketch so you always have the right fonts, when you need them. Find out more over on the","Suitcase Fusion is a professional font manager that lets you preview, manage, and activate, all your fonts in one place. And now, with their handy new plugin, Suitcase Fusion integrates directly with Sketch so you always have the right fonts, when you need them. Find out more over on the","Suitcase Fusion is a professional font manager that lets you preview, manage, and activate, all your fonts in one place. And now, with their handy new plugin, Suitcase Fusion integrates directly with Sketch so you always have the right fonts, when you need them. Find out more over on the","Suitcase Fusion is a professional font manager that lets you preview, manage, and activate, all your fonts in one place. And now, with their handy new plugin, Suitcase Fusion integrates directly with Sketch so you always have the right fonts, when you need them. Find out more over on the","Suitcase Fusion is a professional font manager that lets you preview, manage, and activate, all your fonts in one place. And now, with their handy new plugin, Suitcase Fusion integrates directly with Sketch so you always have the right fonts, when you need them. Find out more over on the","Suitcase Fusion is a professional font manager that lets you preview, manage, and activate, all your fonts in one place. And now, with their handy new plugin, Suitcase Fusion integrates directly with Sketch so you always have the right fonts, when you need them. Find out more over on the","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля","Пиздец","djsfjsdk","fdgffsds","dfsdfsdf","Бля jdkkfrej j jkkj krjrkjjr jkj je klejrkrjjrejkjjkfjkkfjjkjfjk j jj","Пиздец","djsfjsdk","fdgffsds jdkkfrej j jkkj krjrkjjr jkj je klejrkrjjrejkjjkfjkkfjjkjfjk j jj","dfsdfsdf"]
    
    
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
        
        //tableView.reloadData()
        
              tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "cellIdtoggleLL")
        
 //       tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "cellIdtoggle")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "cellcheckmark")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "celldetailButton")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "celldisclosureIndicator")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "cellnone")
//
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "cellIdtoggle1")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "cellcheckmark1")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "celldetailButton1")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "celldisclosureIndicator1")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "cellnone1")
//
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "cellIdtoggle2")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "cellcheckmark2")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "celldetailButton2")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "celldisclosureIndicator2")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "cellnone2")
//
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "cellIdtoggle3")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "cellcheckmark3")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "celldetailButton3")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "celldisclosureIndicator3")
//        tableView.register(OneTableViewCell.self, forCellReuseIdentifier: "cellnone3")
        
        
        
        
        view.addSubview(tableView)
        
//        NSLayoutConstraint.activate([
//            tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
//            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
//            tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
//            tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor)
//        ])
        
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
            

            // Fill containing view

        
        
        tableView.reloadData()
    }
    
//     func tableView(_ tableView: UITableView, titleForHeaderInSection
//                                section: Int) -> String? {
//       return "Header"
//    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 1
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch  indexPath.row {
//        case 0:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cellcheckmark", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], subtitle: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .checkmark)
//            return cell
//
//        case 1:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "celldetailButton", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], subtitle: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .detailButton)
//            return cell
//
//        case 2:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "celldisclosureIndicator", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], subtitle: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .disclosureIndicator)
//            return cell
//
//        case 3:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cellnone", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], subtitle: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .none)
//            return cell
//
//        case 4:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cellcheckmark1", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], subtitle: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .checkmark, icon: "Apple2")
//            return cell
//
//        case 5:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "celldetailButton1", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], subtitle: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .detailButton, icon: "Apple2")
//            return cell
//
//        case 6:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "celldisclosureIndicator1", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], subtitle: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .disclosureIndicator, icon: "Apple2")
//            return cell
//
//        case 7:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cellnone1", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], subtitle: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .none, icon: "Apple2")
//            return cell
//
//        case 8:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cellcheckmark2", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .checkmark, icon: "Apple")
//            return cell
//
//        case 9:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "celldetailButton2", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .detailButton, icon: "Apple")
//            return cell
//
//        case 10:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "celldisclosureIndicator2", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .disclosureIndicator, icon: "Apple")
//            return cell
//
//        case 11:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cellnone2", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .none, icon: "Apple")
//            return cell
//
//        case 12:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cellcheckmark3", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .checkmark)
//            return cell
//
//        case 13:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "celldetailButton3", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .detailButton)
//            return cell
//
//        case 14:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "celldisclosureIndicator3", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .disclosureIndicator)
//            return cell
//
//        case 15:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cellnone3", for: indexPath) as! OneTableViewCell
//            cell.setup(title: data[indexPath.row], detail: data[indexPath.row], card: false, accessoryType: .none)
//            return cell
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdtoggleLL", for: indexPath) as! OneTableViewCell
            //cell.backgroundColor = UIColor.gray
            //cell.card = true
            
            //cell.cellAccessoryType = .detailButton
            // cell.paddingBottom =
            
            //cell.setup(title: data[indexPath.row], subtitle: data[indexPath.row], detail: data[indexPath.row], card: false, type: .titleIcon, accessoryType: .toggle, icon: "Apple")
            
            cell.setup(title: data[indexPath.row], subtitle: data[indexPath.row], detail: data[indexPath.row], card: false, type: .titleSubtitleIcon, accessoryType: .toggle, icon: "Apple2")
            
             //cell.setup(title: data[indexPath.row], subtitle: data[indexPath.row], detail: data[indexPath.row], card: false, type: .titleIcon, accessoryType: .toggle)
            
            //cell.setup(title: data[indexPath.row], detail: data[indexPath.row], card: false, type: .title, accessoryType: .toggle)
            
            //cell.setup(title: data[indexPath.row], subtitle: data[indexPath.row], detail: data[indexPath.row], card: false, type: .title, accessoryType: .toggle)
            
            return cell
        }
        
        
        
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

