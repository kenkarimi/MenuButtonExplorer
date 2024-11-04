//
//  Splash.swift
//  MenuButtonExplorer
//
//  Created by Kennedy Karimi on 04/11/2024.
//

import SwiftUI

struct Splash: View {
    var body: some View {
        NavigationLink("Go to Home...", value: GlobalEnumerations.Views.home)
            .navigationTitle("Splash")
            .navigationBarBackButtonHidden(true)
            .onAppear {
                //navigationHistory.path = NavigationPath([GlobalEnumerations.Views.splash, GlobalEnumerations.Views.home])
            }
    }
}

#Preview {
    Splash()
}
