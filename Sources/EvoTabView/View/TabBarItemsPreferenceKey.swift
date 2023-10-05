//
//  TabBarItemsPreferenceKey.swift
//  EvoTabView
//
//  Created by Rahul C K on 04/10/23.
//

import Foundation
import SwiftUI

struct EvoTabBarItemsPreferenceKey: PreferenceKey {
    
    static var defaultValue: [EvoTabBarItem] = []
    
    static func reduce(value: inout [EvoTabBarItem], nextValue: () -> [EvoTabBarItem]) {
        value += nextValue()
    }
    
}

struct TabBarItemViewModifer: ViewModifier {
    
    let tab: EvoTabBarItem
    @Binding var selection: EvoTabBarItem
    
    @ViewBuilder func body(content: Content) -> some View {
        if selection == tab {
            content
                .opacity(1)
                .preference(key: EvoTabBarItemsPreferenceKey.self, value: [tab])
        } else {
            Text("")
                .opacity(0)
                .preference(key: EvoTabBarItemsPreferenceKey.self, value: [tab])
        }
    }
    
}
