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
        
        Survey(question : "What is your favorite Breakfast?",labelOne : "Eggs", labelTwo : "Toast",labelThree : "Muffin", labelFour: "CornFlakes"),
        Survey(question : "What is your favorite Flower?",labelOne : "Rose", labelTwo : "Tulip",labelThree : "Lily", labelFour: "Orchid"),
        Survey(question : "What is your favorite Drinks?",labelOne : "Lamonade", labelTwo : "Cola",labelThree : "Orange Juice", labelFour: "Coktails"),
        Survey(question : "What is your favorite TVShow?",labelOne : "X-files", labelTwo : "Breaking Bad",labelThree : "Better Call Saul", labelFour: "Friends"),
        Survey(question : "What is your favorite Vacation place?",labelOne : "Hawaii", labelTwo : "Carribeans",labelThree : "Las Vegas", labelFour: "Europe"),
        Survey(question : "What is your favorite Color?",labelOne : "White", labelTwo : "Red",labelThree : "Blue", labelFour: "Green")
    
    ]
    
    
    func getSurveys() -> [Survey] {
        return surveys
    }
    
    
}

