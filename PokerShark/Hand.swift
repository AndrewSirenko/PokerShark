//
//  Hand.swift
//  PokerShark
//
//  Created by Andrew Sirenko on 1/13/22.
//

import SwiftUI


struct Hand: View{
    var card1: Card
    var card2: Card
    
    var body: some View {
        HStack(spacing: 10){
            card1
            card2
        }
    }
}

struct Hand_Previews: PreviewProvider {
    static var previews: some View {
        let card1 = Card(rank: "A", suit: "D")
        let card2 = Card(rank: "K", suit: "D")
        Hand(card1: card1, card2: card2)
    }
}
