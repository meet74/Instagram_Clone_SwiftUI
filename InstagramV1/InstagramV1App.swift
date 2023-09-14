//
//  InstagramV1App.swift
//  InstagramV1
//
//  Created by Meet Patel on 2023-09-14.
//

import SwiftUI

@main
struct InstagramV1App: App {
    init() {
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = UIColor.white
        UITabBar.appearance().standardAppearance = tabBarAppearance
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
