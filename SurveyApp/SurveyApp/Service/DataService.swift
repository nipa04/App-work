//
//  DataService.swift
//  SurveyApp
//
//  Created by iOS developer on 8/30/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let surveys = [
        
        Survey(question : "What is your favorite Breakfast?",answerOne : "Eggs", answerTwo : "Toast",answerThree : "Muffin", answerFour: "CornFlakes"),
        Survey(question : "What is your favorite Flower?",answerOne : "Rose", answerTwo : "Tulip",answerThree : "Lily", answerFour: "Orchid"),
        Survey(question : "What is your favorite Drinks?",answerOne : "Lamonade", answerTwo : "Cola",answerThree : "Orange Juice", answerFour: "Coktails"),
        Survey(question : "What is your favorite TVShow?",answerOne : "X-files", answerTwo : "Breaking Bad",answerThree : "Better Call Saul", answerFour: "Friends"),
        Survey(question : "What is your favorite Vacation place?",answerOne : "Hawaii", answerTwo : "Carribeans",answerThree : "Las Vegas", answerFour: "Europe"),
        Survey(question : "What is your favorite Color?",answerOne : "White", answerTwo : "Red",answerThree : "Blue", answerFour: "Green")
    ]
    
    func getSurveys() -> [Survey] {
        return surveys
    }
    
    
}

