//
//  CardView.swift
//  MemoryGame
//
//  Created by Topu Saha on 3/20/24.
//

import SwiftUI

struct Card: Identifiable, Hashable {
    var id: UUID
    
    var emoji: String
}

struct CardView: View {
    
    
    @State var card: Card
    @State var isFaceDown: Bool = true 
    
    
    var body: some View {
        VStack {
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(isFaceDown ? Color.blue : Color.white)
            
            Text(isFaceDown ? "" : card.emoji)
            
        }
        .frame(width: 125, height: 200)
        .padding()
        .onTapGesture {
            isFaceDown = false
           
            }
        }
}

