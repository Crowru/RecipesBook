//
//  EntryApp.swift
//  RecipesBook
//
//  Created by Руслан  on 11.10.2023.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import SwiftUI

@main
struct EntryApp: App {
    
    /// поможет работать с AppDelegate
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    @ObservedObject private var themeManager = ThemeManager.shared
    
    var body: some Scene {
        WindowGroup {
            ContentApp()
                .environmentObject(themeManager)
        }
    }
}

struct ContentApp: View {
    
    @EnvironmentObject private var themeManager: ThemeManager
        
    var body: some View {
        /// для дебага SwiftUI
        let _ = Self._printChanges()
        
        Text("Hello theme!!!")
            .foregroundColor(.label.primary)
            .padding()
            .background(Color.background.primary)
        
        Button("Just change current theme") {
            if themeManager.currentThemeType == .light {
                themeManager.currentThemeType = .dark
            } else {
                themeManager.currentThemeType = .light
            }
        }
        
        TabView {
            Text("tabView.home")
                .badge(7)
                .tabItem { Label("tabView.home", systemImage: "house") }
            Text("tabView.cart")
                .badge(17)
                .tabItem { Label("tabView.cart", systemImage: "basket.fill") }
            Text("tabView.bookmarks")
                .badge(2)
                .tabItem { Label("tabView.bookmarks", systemImage: "bookmark") }

            Text("tabView.profile")
                .badge(3)
                .tabItem { Label("tabView.profile", systemImage: "person.fill") }

        }
        .tint(.label.secondary)
    }
}

#Preview {
    ContentApp()
        .environmentObject(ThemeManager.shared)
}
