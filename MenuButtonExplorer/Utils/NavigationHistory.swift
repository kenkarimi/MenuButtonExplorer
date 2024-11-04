//
//  NavigationViews.swift
//  MenuButtonExplorer
//
//  Created by Kennedy Karimi on 04/11/2024.
//

import SwiftUI

class NavigationHistory: ObservableObject {
    
    @Published var path: NavigationPath = NavigationPath()
}
