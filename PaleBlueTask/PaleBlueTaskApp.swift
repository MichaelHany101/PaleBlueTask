//
//  PaleBlueTaskApp.swift
//  PaleBlueTask
//
//  Created by Michael Hany on 26/10/2024.
//

import SwiftUI

@main
struct PaleBlueTaskApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
