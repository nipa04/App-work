//
//  Concentration.swift
//  standfordUniApp
//
//  Created by Admin on 2018-04-17.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    var indexOfOneAndOnmyFaceUp:Int?

    
    func chooseCard(at index: Int)
    {
        if !cards[index].isMatched
        {
            if let matchIndex = indexOfOneAndOnmyFaceUp, matchIndex != index
            {
                if cards[matchIndex].identifier == cards[index].identifier
                {
                   cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnmyFaceUp = nil
            }
            else {
                // either no cards or 2 cards are face up
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnmyFaceUp = index
            }
        }
    }
    init (numberOfPairsOfCards: Int)
    {
        for _ in 1...numberOfPairsOfCards {
        
            let card = Card()
            cards += [card,card]
        }
        //TODO: shuffe the cards
    }
}
