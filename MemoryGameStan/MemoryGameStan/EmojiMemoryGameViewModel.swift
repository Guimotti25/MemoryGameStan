//
//  EmojiMemoryGame.swift
//  MemoryGameStan
//
//  Created by Guilherme Motti on 02/07/24.
//

import Foundation

class EmojiMemoryGameViewModel: ObservableObject {
   
    @Published private var model: MemoryGameModel<String> = criarJogoMemoria()
    
    var cards: [MemoryGameModel<String>.Card] {
        model.cards
    }
    
    static private func criarJogoMemoria() -> MemoryGameModel<String> {
        let emojis = ["😎", "👻", "🎃", "💀", "😷", "👽"]
        return MemoryGameModel<String>(numberOfPairsOfCard: emojis.count) { pairIndex in emojis[pairIndex]}
    }
    
    // (User) Intent
    func escolherCarta(card: MemoryGameModel<String>.Card) {
        model.choose(card: card)
    }
    
    func resetarJogo() {
        model = EmojiMemoryGameViewModel.criarJogoMemoria()
    }
}
