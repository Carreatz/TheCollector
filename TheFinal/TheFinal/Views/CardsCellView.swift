//
//  CardsCellView.swift
//  TheFinal
//
//  Created by Roberto Carretero on 2/24/23.
//

import SwiftUI

struct CardsCellView: View {
    let cardsAllInfo: CardInfo
    
    var body: some View {
        ZStack {
            VStack {
                AsyncImage(url: URL(string: cardsAllInfo.images.small) ) { image in
                    image //manipulates the image
                        .resizable()
                } placeholder: {
                    ProgressView()
                }
                Text(cardsAllInfo.number)
            }
        }
        .frame(width: 100 , height: 200)
    }
}

//struct CardsCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardsCellView()
//    }
//}
