import SwiftUI

struct CardGridView: View {
    //@State private var data = [String]()
   @State private var data = [Card]()
    
    private let allEmojis = [
        "😄", "😢", "❤️", "😠", "😂", "😭", "😎", "😲", "👍", "👎", "🔥", "🚀", "☕", "🍕", "🍔", "🌮", "🌯", "🍦", "🍰", "🍺", "🍷"
    ]
    
    
    
    
    
    
    private let columns = Array(repeating: GridItem(.flexible()), count: 3)

    var body: some View {
        VStack {
            HStack {
                Menu("Pick Pairs") {
                    Button("3 Pairs") { createLayout(num: 3) }
                    Button("6 Pairs") { createLayout(num: 6) }
                    Button("10 Pairs") { createLayout(num: 10) }
                }
            }
            
            ScrollView {
                
                LazyVGrid(columns: columns, spacing: 1) {
               
                    ForEach(data) { item in
                        //CardView(card: Card(id: UUID(), emoji: item))
                        CardView(card: item)
                    }
                
                }
                .padding(.top, 100)
                .padding(.horizontal, 10)
            }
            .frame(maxHeight: 700)
            
        }
    }

    private func createLayout(num: Int) {
        
        var myData : [String] =  [String]()
        
        for _ in 1...num {
            let random_emoji = allEmojis[Int.random(in: 0..<allEmojis.count)]
            myData.append(random_emoji)
        }
        
        myData += myData
        myData.shuffle()
        data = myData.map { emoji in
            Card(id: UUID(), emoji: emoji)
        }
    }
}

struct CardGridView_Previews: PreviewProvider {
    static var previews: some View {
        CardGridView()
    }
}

