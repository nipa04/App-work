//
//  CardModel.swift
//  matchAPP
//
//  Created by Admin on 2018-04-13.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
        
        //Declare an array to store generated cards
        var generatedCardsArray = [Card]()
        
        //Randomly generate pairs of cards
        
        for _ in 1...8 {
            
            //get a random number
            let randomNumber = arc4random_uniform(13) + 1
        
           
            //log the number
            print(randomNumber)
            
            //create the first card object
            let cardOne = Card()
            cardOne.imageName = "card\(randomNumber)"
            
            generatedCardsArray.append(cardOne)
            
            //Create the second card object
            let cardTwo = Card()
            cardTwo.imageName = "card\(randomNumber)"
            
            generatedCardsArray.append(cardTwo)
        }
        // optional : make it so we only have unique pairs of cards
        
        //TODO : randomize the array
        
        //return the array
        return generatedCardsArray
    }
    
}
