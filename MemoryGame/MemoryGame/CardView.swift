//
//  CardView.swift
//  MemoryGame
//
//  Created by Topu Saha on 3/20/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            
            RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.blue)
        }
        .frame(width: 125, height: 200)
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
