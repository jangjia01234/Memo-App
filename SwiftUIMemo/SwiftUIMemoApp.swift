//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by Jia Jang on 3/14/24.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
