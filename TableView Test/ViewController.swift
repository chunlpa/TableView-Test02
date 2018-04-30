//
//  ViewController.swift
//  TableView Test
//
//  Created by D7703_04 on 2018. 4. 30..
//  Copyright © 2018년 D7703_04. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var data = ["강아지", "고양이", "토끼"]
    var subData = ["ONE", "TWO", "THREE"]
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row]
        cell.detailTextLabel?.text = "section= \(indexPath.section) row=\(indexPath.row)"
        
        let myDog = UIImage(named:"동물\(indexPath.row).jpg")
        cell.imageView?.image = myDog
        
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }

}

