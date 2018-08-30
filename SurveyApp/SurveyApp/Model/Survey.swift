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
    private (set) public var answerOne : String
    private (set) public var answerTwo : String
    private (set)public var answerThree: String
    private (set)public var answerfour: String
   
    init (question:String,answerOne: String ,answerTwo : String, answerThree: String, answerFour:String ) {
        self.question = question
        self.answerOne = answerOne
        self.answerTwo = answerTwo
        self.answerThree = answerThree
        self.answerfour = answerFour
     
    }
}
