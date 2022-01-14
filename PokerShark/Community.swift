//
//  Community.swift
//  PokerShark
//
//  Created by Andrew Sirenko on 1/13/22.
//

import SwiftUI

struct Community: View {
    var cardArr: Array<Card>
    
    var body: some View {
        HStack(spacing: 10){
            ForEach(0..<5) { number in
                cardArr[number]
            }
        }
    }
}

struct Community_Previews: PreviewProvider {
    static var previews: some View {
        Community(cardArr: [Card](repeating: Card(rank: "?", suit: "?"), count: 5))
    }
}
