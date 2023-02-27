//
//  CardNavView.swift
//  TheFinal
//
//  Created by Roberto Carretero on 2/24/23.
//

import SwiftUI

struct CardNavView: View {
    let card: CardInfo
    
    var body: some View {
            AsyncImage(url: URL(string: card.images.large) ) { image in
                image //manipulates the image
                    .resizable()
            } placeholder: {
                ProgressView()
            }
    .background(LinearGradient(colors: [.red, .purple], startPoint: .top, endPoint: .bottom))
    }
}

//struct CardNavView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardNavView()
//    }
//}
