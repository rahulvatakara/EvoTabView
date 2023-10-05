//
//  EvoTabView.h
//  EvoTabView
//
//  Created by Rahul C K on 04/10/23.
//

import Foundation
import SwiftUI

public struct EvoTabBarItem: Hashable {
    let imageName: String
    let title: String
    let color: Color
    let actionButtonColor: Color
    let isAction: Bool

    public init(imageName: String,
                title: String = "",
                color: Color = .white,
                actionButtonColor: Color = .clear,
                isAction: Bool = false) {
        self.imageName = imageName
        self.title = title
        self.color = color
        self.actionButtonColor = actionButtonColor
        self.isAction = isAction
    }
}
