//
//  ViewExtension.swift
//  EvoTabView
//
//  Created by Rahul C K on 04/10/23.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCornerShape(radius: radius, corners: corners) )
    }
}

public extension View {
    func tabBarItem(tab: EvoTabBarItem, selection: Binding<EvoTabBarItem>) -> some View {
        modifier(TabBarItemViewModifer(tab: tab, selection: selection))
    }
}
