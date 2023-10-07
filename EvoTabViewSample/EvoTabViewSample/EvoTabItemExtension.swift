//
//  EvoTabItemExtension.swift
//  EvoTabViewSample
//
//  Created by Rahul C K on 04/10/23.
//

import Foundation
import EvoTabView

extension EvoTabBarItem {
    static var books: EvoTabBarItem {
        EvoTabBarItem(imageName: "book")
    }
    static var add: EvoTabBarItem {
        EvoTabBarItem(imageName: "plus",
                      actionButtonColor: .blue,
                      isAction: true)
    }
    static var movies: EvoTabBarItem {
        EvoTabBarItem(imageName: "film")
    }
    static var sports: EvoTabBarItem {
        EvoTabBarItem(imageName: "figure.run.square.stack.fill")
    }
    static var cities: EvoTabBarItem {
        EvoTabBarItem(imageName: "location.circle")
    }
}
