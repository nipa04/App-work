//
//  ViewController.swift
//  tableViewApp3
//
//  Created by iOS developer on 6/12/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    let elements = ["Bird", "Duck", "Lion", "Zebra"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier:"customCell" , for: indexPath) as! TableViewCell
        
        cell.myImageView.image = UIImage( named: elements[indexPath.row])
        cell.textLabel?.text =  elements[indexPath.row]
        
//        cell.myImageView.layer.cornerRadius = cell.myImageView.frame.height / 2
//        cell.view.layer.cornerRadius = cell.view.frame.height / 2
//        
        
        return cell
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

