//
//  ContentView.swift
//  MenuButtonExplorer
//
//  Created by Kennedy Karimi on 04/11/2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var navigationHistory: NavigationHistory
    
    var body: some View {
        NavigationStack(path: $navigationHistory.path) {
            HStack(alignment: .center, spacing: 0) {
                //Empty. Redirects to Splash() onAppear.
            }
            .onAppear {
                navigationHistory.path.append(GlobalEnumerations.Views.splash) //the path array state variable now has one item.
            }
            .navigationDestination(for: GlobalEnumerations.Views.self) { value in
                switch value {
                case .splash:
                    Splash()
                case .home:
                    Home()
                }
            }
            .navigationTitle("ContentView")
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(NavigationHistory())
}
