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
    
    // UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cell 메모리 재활용
        let identifier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row]
        cell.detailTextLabel?.text = "section= \(indexPath.section) row= \(indexPath.row)"
        
        let myImage = UIImage(named:"동물\(indexPath.row).jpg")
        cell.imageView?.image = myImage
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let myAlert = UIAlertController(title: data[indexPath.row], message: subData[indexPath.row], preferredStyle: .alert)
        
        let libAction = UIAlertAction(title: "section = \(indexPath.section)   row = \(indexPath.row)", style: .default) {
            (action: UIAlertAction) -> Void in
        }
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel) {
            (action: UIAlertAction) -> Void in
        }
        
        print("section = \(indexPath.section)   row = \(indexPath.row)")
        print(data[indexPath.row])
        print(subData[indexPath.row])
        
        myAlert.addAction(libAction)
        myAlert.addAction(cancelAction)
        present(myAlert, animated: true, completion: nil)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }

}

