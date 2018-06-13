//
//  ViewController.swift
//  markPriceTableViewApp
//
//  Created by iOS developer on 6/13/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var catagoryTable : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        catagoryTable.dataSource = self
        catagoryTable.delegate = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCatagories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "catagoryCell") as! TableViewCell
            let catagory = DataService.instance.getCatagories()[indexPath.row]
            cell.updateViews(catagory : catagory)
            return cell
  

}
}
