//
//  draperyApp.swift
//  drapery
//
//  Created by John on 8/8/23.
//

import SwiftUI

@main
struct draperyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, QuotesProvider.shared.viewContext)
        }
    }
}
