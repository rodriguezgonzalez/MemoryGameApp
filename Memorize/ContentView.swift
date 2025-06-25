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
    //Temporary state 
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 15)
            if isFaceUp {
               base.fill(.white)
                base.strokeBorder(lineWidth: 3)
                Text("👻").font(.largeTitle)
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
