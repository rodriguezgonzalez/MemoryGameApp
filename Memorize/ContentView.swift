//
//  ContentView.swift
//  Memorize
//
//  Created by Rafael Rodriguez on 2025-02-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 15).foregroundStyle(.white)
                RoundedRectangle(cornerRadius: 15).strokeBorder(lineWidth: 3)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius:15)
                
            }
        })
    }
}






















#Preview {
    ContentView()
}
