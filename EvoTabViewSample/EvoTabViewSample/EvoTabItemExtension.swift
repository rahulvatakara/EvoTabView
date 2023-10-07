//
//  EvoTabItemExtension.swift
//  EvoTabViewSample
//
//  Created by Rahul C K on 04/10/23.
//

import Foundation
import EvoTabView

extension EvoTabBarItem {
    static var home: EvoTabBarItem {
        EvoTabBarItem(imageName: "house")
    }
    static var add: EvoTabBarItem {
        EvoTabBarItem(imageName: "plus",
                      actionButtonColor: .blue,
                      isAction: true)
    }
    static var favorites: EvoTabBarItem {
        EvoTabBarItem(imageName: "key")
    }
    static var profile: EvoTabBarItem {
        EvoTabBarItem(imageName: "person")
    }
    static var messages: EvoTabBarItem {
        EvoTabBarItem(imageName: "lock.fill")
    }
}
