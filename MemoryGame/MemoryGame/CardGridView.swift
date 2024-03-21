//
//  CardGridView.swift
//  MemoryGame
//
//  Created by Topu Saha on 3/20/24.
//

import SwiftUI





struct CardGridView: View {
        
    @State var tapped = 0
    @State var chosenEmoji: [Card] = []
        
    let data = (1...6).map { "Item \($0)" }

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    

    var body: some View {
        

        ScrollView {
        
            VStack {
                Text("Tapped \(chosenEmoji.count)")
                    .padding()
            }
                LazyVGrid(columns: columns, spacing: 1) {
                    ForEach(data, id: \.self) { item in
                        CardView(card : Card(isFacedDown: true, emoji: item), chosenEmoji: $chosenEmoji)
                        
                
                        
                    }
                }
                .padding(.top, 100)
                .padding(.horizontal, 10)
                
            }
            .frame(maxHeight: 700)
        }
       
    
}


struct CardGridView_Previews: PreviewProvider {
    static var previews: some View {
        CardGridView()
    }
}
