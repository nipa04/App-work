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
    @IBOutlet weak var answerOneTextField : UITextField!
    @IBOutlet weak var answerTwoTextField : UITextField!
    @IBOutlet weak var answerThreeTextField : UITextField!
    @IBOutlet weak var answerFourTextField : UITextField!
    
    func updateViews(survey : Survey){
        questionTextField.text =  survey.question
        answerOneTextField.text = survey.answerOne
        answerTwoTextField.text = survey.answerTwo
        answerThreeTextField.text = survey.answerThree
        answerFourTextField.text = survey.answerfour
        
    }

}
