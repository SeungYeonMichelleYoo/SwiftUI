//
//  SwiftUI_CardStackViewApp.swift
//  SwiftUI_CardStackView
//
//  Created by SeungYeon Yoo on 2023/02/21.
//

import SwiftUI

@main
struct SwiftUI_CardStackViewApp: App {
    var body: some Scene {
        WindowGroup {
            MyCustomTabView(tabIndex: .home)
        }
    }
}
