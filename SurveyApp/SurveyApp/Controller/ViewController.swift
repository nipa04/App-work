//
//  ViewController.swift
//  SurveyApp
//
//  Created by iOS developer on 8/30/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var surveyTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        surveyTable.dataSource = self
        surveyTable.delegate = self
       
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return DataService.instance.getSurveys().capacity
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getSurveys().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SurveyCell") as? SurveyCell {
            let survey = DataService.instance.getSurveys()[indexPath.row]
            cell.updateViews(survey: survey)
            return cell
        }
            else {
                return SurveyCell()
            
        }
    
    }

}

