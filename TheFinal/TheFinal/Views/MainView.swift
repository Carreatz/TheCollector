//
//  MainView.swift
//  TheFinal
//
//  Created by Roberto Carretero on 2/23/23.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel = ViewModel()
    private let gridItems = [GridItem(.flexible())]
    
    var body: some View {
            GeometryReader { geometry in
                NavigationView {
                    if let sets = viewModel.sets {
                        ScrollView {
                            LazyVGrid(columns: gridItems, spacing: 16) {
                                ForEach(sets, id:\.self) { sets in
                                    NavigationLink(destination: CardsMainView(setId: sets.id)) {
                                        SetsCellView(setsInfo: sets)
                                    }
                                }
                            }
                        }
                        .navigationBarTitle("Sets")
                        .background(LinearGradient(colors: [.red, .purple], startPoint: .top, endPoint: .bottom))
                    }
                }
            }
        }
    }

    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }

