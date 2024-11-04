//
//  MenuButtonExplorerApp.swift
//  MenuButtonExplorer
//
//  Created by Kennedy Karimi on 04/11/2024.
//

import SwiftUI

@main
struct MenuButtonExplorerApp: App {
    
    @StateObject private var navigationHistory: NavigationHistory = NavigationHistory()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(navigationHistory)
        }
    }
}
