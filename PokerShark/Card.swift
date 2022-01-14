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
    var hidden: Bool = false
    
    var body: some View {
        if (hidden) {
            Text("??")
                .frame(width: 58, height: 80)
                .border(Color.blue)
        }
        
        else {
            Text(rank + suit)
            .frame(width: 58, height: 80)
            .border(Color.black)
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(rank: "A", suit: "D", hidden: false)
    }
}
