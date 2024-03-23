//
//  GameLogic.swift
//  MemoryGame
//
//  Created by Topu Saha on 3/22/24.
//

import Foundation

class GameLogic {
    
    
    private let allEmojis = [
        "😄", "😢", "❤️", "😠", "😂", "😭", "😎", "😲", "👍", "👎", "🔥", "🚀", "☕", "🍕", "🍔", "🌮", "🌯", "🍦", "🍰", "🍺", "🍷"
    ]
    
    var cards : [String] = [String]()
   
    
    init(numberOfPairs : Int) {
        
        for _ in 1...numberOfPairs {
            let random_emoji = allEmojis[Int.random(in: 0..<allEmojis.count)]
            self.cards.append(random_emoji)
        }
        
        self.cards += self.cards
        self.cards.shuffle()
    }
    
    
    func wrongMatch(firstPicked : Card, secondPicked : Card) {
        if firstPicked.emoji != secondPicked.emoji {
            
        }
    }
    
    func rightMatch() {
        
    }
    
    
    
    

}
