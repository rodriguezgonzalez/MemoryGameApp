//
//  ContentView.swift
//  Memorize
//
//  Created by Rafael Rodriguez on 2025-02-06.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻","🎃","💀","🧟‍♂️"]
    var body: some View {
       HStack {
           ForEach(emojis.indices, id: \.self) { index in
               CardView(content: emojis[index])
           }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    //Temporary state
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 15)
            if isFaceUp {
               base.fill(.white)
                base.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
              base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}






















#Preview {
    ContentView()
}
