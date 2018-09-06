//
//  SurveyCell.swift
//  SurveyApp
//
//  Created by iOS developer on 8/30/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class SurveyCell: UITableViewCell {
    
    @IBOutlet weak var questionTextField : UITextField!
    
    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var labelTwo: UILabel!
    
    @IBOutlet weak var labelThree: UILabel!
    
    @IBOutlet weak var labelFour: UILabel!
    
    
    func updateViews(survey : Survey) {
        
        questionTextField.text =  survey.question
        labelOne.text = survey.labelOne
        labelTwo.text = survey.labelTwo
        labelThree.text = survey.labelThree
        labelFour.text = survey.labelFour

    }

}
