//
//  SetsViewModel.swift
//  TheFinal
//
//  Created by Roberto Carretero on 2/23/23.
//

import SwiftUI
import CoreData

class ViewModel: ObservableObject {
    let baseUrl = "https://api.pokemontcg.io/v2/sets.json"
    @Published var sets: [DataSets]?
    
    init() {
        getData()
        }
    
    func getData() {
        guard let url = URL(string: baseUrl) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else { return }
            do {
                let setCore = try JSONDecoder().decode(SetCore.self, from: data)
                DispatchQueue.main.async {
                    self.sets = setCore.data
                }
            } catch {
                print("Error: \(error)")
            }
        }.resume()
    }
}

