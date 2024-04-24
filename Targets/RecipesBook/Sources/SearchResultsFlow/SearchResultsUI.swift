//
//  SearchResultsUI.swift
//  RecipesBook
//
//  Created by Руслан  on 24.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

struct SearchResultsUI: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                header
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack(spacing: 0) {
                        backButton
                        
                        Spacer()
                        
                        helpTooltip
                    }
                }
            }
        }
    }
}

// MARK: - Header

private extension SearchResultsUI {
    
    var header: some View {
        ZStack {
            VStack(spacing: 0) {
                headerImage
                
                Spacer()
            }
        }
    }
    
    private var headerImage: some View {
        Image(.searchResultBackground)
            .resizable()
            .scaledToFit()
            .ignoresSafeArea()
    }
}

// MARK: - Toolbar

private extension SearchResultsUI {
        
    var backButton: some View {
        Button {
            print("Back button")
        } label: {
            backButtonImage
        }
        .frame(width: 40, height: 40)
        .background(Color.background.ghost, in: Circle())
    }
    
    var backButtonImage: some View {
        Image(systemName: "arrow.backward")
            .resizable()
            .scaledToFit()
            .frame(width: 20, height: 14)
            .foregroundStyle(.white)
    }
    
    var helpTooltip: some View {
        HStack(spacing: 5) {
            helpTooltipTitle
            helpTooltipImage
        }
        .padding(8)
        .background(.white.opacity(0.7), in: .rect(cornerRadius: 20))
        .padding(.leading, 10)
    }
    
    var helpTooltipTitle: some View {
        Text("Swipe to search by ingredients")
            .foregroundStyle(Color.black.opacity(0.8))
            .font(.caption2)
    }
    
    var helpTooltipImage: some View {
        Image(systemName: "chevron.right")
            .resizable()
            .scaledToFit()
            .frame(width: 10, height: 8)
    }
}

#Preview {
    SearchResultsUI()
}
