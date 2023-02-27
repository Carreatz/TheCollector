//
//  TheFinalApp.swift
//  TheFinal
//
//  Created by Roberto Carretero on 2/23/23.
//

import SwiftUI

@main
struct TheFinalApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
