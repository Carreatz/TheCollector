//
//  CardsMainView.swift
//  TheFinal
//
//  Created by Roberto Carretero on 2/24/23.
//

import SwiftUI

struct CardsMainView: View {
    let setId: String
    @ObservedObject var viewModel: CardsViewModel
    
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    init(setId: String) {
        self.setId = setId
        viewModel = CardsViewModel()
        viewModel.getCards(forSetId: setId)
    }
    
    var body: some View {
        GeometryReader { geometry in
                if let cards = viewModel.cards {
                    ScrollView {
                        LazyVGrid(columns: gridItems, spacing: 16) {
                            ForEach(cards) { card in
                                NavigationLink(destination: CardNavView(card: card)) {
                                    CardsCellView(cardsAllInfo: card)
                                }
                            }
                        }
                    }
                    .navigationBarTitle("Cards from Set")
                    .background(LinearGradient(colors: [.red, .purple], startPoint: .top, endPoint: .bottom))
                }
        }
    }
}



//struct CardsMainView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardsMainView()
//    }
//}
