//
//  DataService.swift
//  SurveyApp
//
//  Created by iOS developer on 8/30/18.
//  Copyright © 2018 iOS developer. All rights reserved.

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let dataSource: [SurveySectionModel] = [
        
 SurveySectionModel(question : "What is your fav breakfast?", answers : ["egg", "bread", "muffin","bagel"], correctIndex : 1 ),
 SurveySectionModel(question : "What is your fav game?", answers : ["hockey", "golf", "football","tennis"], correctIndex : 2),
 SurveySectionModel(question : "What is your fav color?", answers : ["orange", "red", "blue","pink"], correctIndex : 0),
 SurveySectionModel(question : "What is your fav flower?", answers : ["orchid", "rose", "lily","lotus"], correctIndex : 3 ),
 
    ]
    

    func getSurveys() -> [SurveySectionModel] {
        return dataSource
    }
}


