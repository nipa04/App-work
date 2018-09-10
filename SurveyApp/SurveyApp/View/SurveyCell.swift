//
//  SurveyCell.swift
//  SurveyApp
//
//  Created by iOS developer on 8/30/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit


class SurveyCell: UITableViewCell {
    
    var question : String = ""
    var answers: [String] = []
    var correctIndex: Int = 0
    
    @IBOutlet weak var surveyQuestionList : UILabel!
    
    func updateViews(survey : SurveySectionModel) {
        question = survey.question
        answers = survey.answers
        correctIndex = survey.correctIndex

    }

}
