//
//  Card.swift
//  PokerShark
//
//  Created by Andrew Sirenko on 1/12/22.
//

import SwiftUI

struct Card: View {
    var rank: String // These should be small ints later?
    var suit: String
    
    var body: some View {
        Text(rank + suit)
            .frame(width: 90, height: 130)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(rank: "A", suit: "D")
    }
}
