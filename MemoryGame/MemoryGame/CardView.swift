//
//  CardView.swift
//  MemoryGame
//
//  Created by Topu Saha on 3/20/24.
//

import SwiftUI

struct Card {
    var isFacedDown: Bool
    var emoji: String
}

struct CardView: View {
    
    
    @State var card: Card
    @Binding var chosenEmoji: [Card]
    
    
    var body: some View {
        VStack {
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(card.isFacedDown ? Color.blue : Color.white)
            
            Text(card.isFacedDown ? "" : card.emoji)
            
        }
        .frame(width: 125, height: 200)
        .padding()
        .onTapGesture {
            card.isFacedDown.toggle()
            chosenEmoji.append(card)
            
            if chosenEmoji.count == 2 {
                var card1 = chosenEmoji[0]
                var card2 = chosenEmoji[1]
                
                if card1.emoji != card2.emoji {
                    
                    for index in chosenEmoji.indices {
                        chosenEmoji[index].isFacedDown = true
                    }
                }
                    
                
                else {
                    card1.emoji = ""
                    card2.emoji = ""
                }
                
                    chosenEmoji.remove(at: 1)
                    chosenEmoji.remove(at: 0)
                }
            }
        }
}

