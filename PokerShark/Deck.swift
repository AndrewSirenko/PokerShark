//
//  Deck.swift
//  PokerShark
//
//  Created by Andrew Sirenko on 1/13/22.
//

import Foundation

class Deck {
    private var deck: Array<UInt8>
    
    enum DeckError: Error{
        case deckEmpty
        case cardNotFound
    }
    
    init() {
        deck = Array<UInt8>(0...52)
        self.shuffle()
    }
    
    func shuffle(){
        deck.shuffle()
    }
    
    // Draws top card from deck
    func drawTop() throws -> UInt8 {
        if (deck.isEmpty) {
            throw DeckError.deckEmpty
        }
        return deck.removeLast()
    }
    
    // Draws a specific card from the deck if it exists
    func drawCard(rank: UInt8, suit: UInt8) throws -> UInt8 {
        let num = rank + 13 * suit
        let idx = deck.firstIndex(of: num)
        
        if (idx != nil) {
            deck.remove(at: idx!)
            return num
        }
        else {
            throw DeckError.cardNotFound
        }
    }
    
    
}
