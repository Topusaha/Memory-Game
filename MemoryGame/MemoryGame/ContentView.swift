//
//  ContentView.swift
//  MemoryGame
//
//  Created by Topu Saha on 3/20/24.
//

import SwiftUI

// method to check if 2 cards matches

struct ContentView: View {
    
    @State var tapped = 0
    
    
    var body: some View {
        VStack {
            CardGridView()
                .onTapGesture {
                    tapped += 1
                }
            
            Text("Tapped \(tapped)")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
