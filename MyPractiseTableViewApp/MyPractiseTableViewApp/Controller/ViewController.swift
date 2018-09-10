//
//  ViewController.swift
//  MyPractiseTableViewApp
//
//  Created by iOS developer on 9/6/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

/*
 {
    question            -> String
    answers             -> [String]
        {
            - Op1
            - Op2
            - Op3
            - Op4
        }
    correctIndex        -> Int
 }
 */

struct SurveySectionModel {
    let question: String
    let answers: [String]
    let correctIndex: Int
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTable : UITableView!
    
    let dataSource: [SurveySectionModel] = [SurveySectionModel(question: "Question1",
                                                               answers: ["a", "b", "c", "d"],
                                                               correctIndex: 0),
                                            SurveySectionModel(question: "Question2",
                                                               answers: ["a", "b", "c", "d"],
                                                               correctIndex: 1),
                                            SurveySectionModel(question: "Question3",
                                                               answers: ["a", "b", "c", "d"],
                                                               correctIndex: 3),
                                            SurveySectionModel(question: "Question4",
                                                               answers: ["a", "b", "c", "d"],
                                                               correctIndex: 2)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable.delegate = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sectionData = dataSource[section]
        return sectionData.question
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionData = dataSource[section]
        return sectionData.answers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTableView" )
        let sectionData = dataSource[indexPath.section]
        cell?.textLabel?.text = sectionData.answers[indexPath.row]
        return cell!
    }
}

