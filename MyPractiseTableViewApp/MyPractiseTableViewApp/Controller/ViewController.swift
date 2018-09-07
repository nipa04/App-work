//
//  ViewController.swift
//  MyPractiseTableViewApp
//
//  Created by iOS developer on 9/6/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTable : UITableView!
    
    let sections = ["Foods", "Vegetables" , "Meat", "Dessert"]
    let s1Data = ["Egg","bread", "banana"]
    let s2Data = ["milk", "mango", "beef"]
    let s3Data = ["tomato", "broccoli" , "onion"]
    let s4data = ["grapes", "avocado"]
    
    var sectionData : [Int : [String]] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable.delegate = self
        
        sectionData = [0: s1Data, 1: s2Data , 2:s3Data, 3: s4data]
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (sectionData[section]?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTableView" )
        cell?.textLabel?.text = sectionData[indexPath.section]?[indexPath.row]
        return cell!
        
        
    }
    
    


}

