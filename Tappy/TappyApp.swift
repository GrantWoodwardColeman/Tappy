//
//  TappyApp.swift
//  Tappy
//
//  Created by Grant Coleman on 2/10/22.
//

import SwiftUI

@main
struct TappyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
