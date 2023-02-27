//
//  CardsViewModel.swift
//  TheFinal
//
//  Created by Roberto Carretero on 2/24/23.
//

import SwiftUI
import CoreData


class CardsViewModel: ObservableObject {
    @Published var cards: [CardInfo]?
    
    func getCards(forSetId setId: String) {
        guard let url = URL(string: "https://api.pokemontcg.io/v2/cards?q=set.id:\(setId)") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("Failed to get data from URL: \(url)")
                return
            }
            
            do {
                let decodedResponse = try JSONDecoder().decode(AllCards.self, from: data)
                self.cards = decodedResponse.data.filter { $0.datumSet.id == setId }
            } catch {
                print("Failed to decode response from URL: \(url). Error: \(error)")
            }
            
        }
        .resume()
    }
}


