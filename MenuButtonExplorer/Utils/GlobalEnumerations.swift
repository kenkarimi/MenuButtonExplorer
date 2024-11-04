//
//  GlobalEnumerations.swift
//  MenuButtonExplorer
//
//  Created by Kennedy Karimi on 04/11/2024.
//

import Foundation

struct GlobalEnumerations {
    enum Views: Hashable { //Whatever is assigned to the parameter navigationDestination, if not a traditional data type(String,Int etc) must conform to the Hashable protocol.
        case splash, home
    }
}
