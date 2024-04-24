//
//  HomeUI.swift
//  RecipesBook
//
//  Created by Руслан  on 24.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

struct HomeUI: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.green.opacity(0.2).ignoresSafeArea()
                Text("Hello")
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack(spacing: 14) {
                        toolbarImage(name: "location.viewfinder")
                        toolbarTitle(name: "Maxim, Cibulsky")
                        toolbarImage(name: "chevron.down")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Circle().frame(width: 42, height: 42)
                }
            }
        }
    }
}

// MARK: - Toolbar image

private extension HomeUI {
    
    func toolbarImage(name: String) -> some View {
        Image(systemName: name)
        .resizable()
        .scaledToFit()
        .frame(width: 21, height: 21)
        .foregroundStyle(.secondary)
        .padding(.vertical, 2)
    }
}

// MARK: - Toolbar title
private extension HomeUI {
    
    func toolbarTitle(name: String) -> some View {
        Text(name)
            .font(.caption)
            .foregroundStyle(.primary)
    }
}

#Preview {
    HomeUI()
}
