//
//  CardGridView.swift
//  MemoryGame
//
//  Created by Topu Saha on 3/20/24.
//

import SwiftUI


struct CardGridView: View {
    
        let data = (1...9).map { "Item \($0)" }

            let columns = [
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible()),
            ]

            var body: some View {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 1) {
                        ForEach(data, id: \.self) { item in
                            CardView()
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
