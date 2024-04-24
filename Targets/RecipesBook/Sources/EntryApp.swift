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
    
    var body: some Scene {
        WindowGroup {
            ContentApp()
        }
    }
}

struct ContentApp: View {
    
    //@Environment(\.locale) private var locale
    
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
        .tint(.red)
    }
}

#Preview {
    ContentApp()
}







struct ContenApp: View {
    
    @Environment(\.locale) var locale
    
    var body: some View {
        
        VStack {
            HStack {
                Button {
                } label: {
                    Label("", systemImage: "line.3.horizontal")
                        .foregroundColor(.black.opacity(0.6))
                }
                
                Spacer()
    
                Text("Mohammadpur, Dhaka")
                    .foregroundColor(.black.opacity(0.6))
                
                Spacer()
                
                Color.gray.opacity(0.3)
                    .frame(width: 42, height: 42)
                    .clipShape(Circle())
                
            }
            
        }.padding(.leading, 25) .padding(.trailing, 25)
        
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
