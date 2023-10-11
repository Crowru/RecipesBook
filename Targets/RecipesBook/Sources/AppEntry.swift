//
//  AppEntry.swift
//  RecipesBook
//
//  Created by Руслан  on 11.10.2023.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import SwiftUI

@main
struct EntryApp: App {
    
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate // поможет работать с AppDelegate
    
    var body: some Scene {
        WindowGroup {
            ContenApp()
        }
    }
}
#Preview {
    ContenApp()
}
struct ContenApp: View {
    
    @Environment(\.locale) var locale
    
    var body: some View {
        
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
        .accentColor(.red)
    }
}
