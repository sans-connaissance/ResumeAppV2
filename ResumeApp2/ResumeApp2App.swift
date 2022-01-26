//
//  ResumeApp2App.swift
//  ResumeApp2
//
//  Created by David Malicke on 1/25/22.
//

import SwiftUI

@main
struct ResumeApp2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
