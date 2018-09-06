//
//  Survey.swift
//  SurveyApp
//
//  Created by iOS developer on 8/30/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import Foundation

struct Survey {
    
    private (set)public var question : String
    private (set) public var labelOne : String
    private (set) public var labelTwo : String
    private (set)public var labelThree: String
    private (set)public var labelFour: String
   
    init (question:String,labelOne: String ,labelTwo : String, labelThree: String, labelFour:String ) {
        self.question = question
        self.labelOne = labelOne
        self.labelTwo = labelTwo
        self.labelThree = labelThree
        self.labelFour = labelFour
     
    }
}
