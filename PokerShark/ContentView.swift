//
//  ContentView.swift
//  PokerShark
//
//  Created by Andrew Sirenko on 12/27/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Community Cards")
                .padding()
                Community(cardArr: [Card](repeating: Card(rank: "?", suit: "?"), count: 5))
            
            Spacer()
            // Table
            
            
            
            Spacer()
            // Hand
            HStack {
                Hand(card1: Card(rank: "A", suit: "D"), card2: Card(rank: "A", suit: "D"))
            }
            .padding()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
