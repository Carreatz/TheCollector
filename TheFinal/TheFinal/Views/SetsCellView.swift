//
//  SetsCellView.swift
//  TheFinal
//
//  Created by Roberto Carretero on 2/23/23.
//

import SwiftUI

struct SetsCellView: View {
    let setsInfo: DataSets
    
    var body: some View {
            ZStack {
                VStack {
                    AsyncImage(url: URL(string: setsInfo.images.logo) ) { image in
                        image //manipulates the image
                            .resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    Text(setsInfo.name)
                        .foregroundColor(Color.black)
                }
            }
            .frame(width: 400, height: 200)
        }
    }


//struct SetsCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        SetsCellView()
//    }
//}
