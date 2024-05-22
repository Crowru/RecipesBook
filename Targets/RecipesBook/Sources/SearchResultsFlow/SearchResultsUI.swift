//
//  SearchResultsUI.swift
//  RecipesBook
//
//  Created by Руслан  on 24.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

// MARK: - SearchResultsUI

struct SearchResultsUI: View {
    
    private let historyData: [String] = ["My search history", "My favourite recipes", "Easy Mexican Casserole", "Thai Chicken Balls", "Honey Mustard Pork Chops", "My search history", "My favourite recipes", "Easy Mexican Casserole", "Thai Chicken Balls", "Honey Mustard Pork Chops", "My search history", "My favourite recipes", "Easy Mexican Casserole", "Thai Chicken Balls", "Honey Mustard Pork Chops"]
    
    var body: some View {
        //NavigationView {
            VStack {
                header
                    //.border(.red)
                search
                    //.border(.red)
            }
            .background(Color.white)
        //}
    }
    
    // MARK: - Search
    
    var search: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(historyData.indices, id: \.self) { index in
                    cell(
                        title: historyData[index],
                        isDividerExist: historyData.count - 1 != index
                    )
                }
            }
        }
        .padding(.top, 6)
        .background(Color.white)
        .cornerRadius(24, corners: [.topLeft, .topRight])
        .offset(x: 0, y: -75)
    }
    
    func cell(title: String, isDividerExist: Bool) -> some View {
        VStack {
            HStack {
                Text(title)
                    .font(.description)

                
                Spacer()
                
                Image(systemName: "arrow.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 11)
            }
            .padding(.vertical, 17)
            
            Divider()
                .frame(height: 0.5)
                .opacity(isDividerExist ? 1 : 0)
        }
        .padding(.horizontal, 35)
        .foregroundStyle(Color.label.secondary)
    }
}

// MARK: - Header

private extension SearchResultsUI {
    
    var header: some View {
        ZStack(alignment: .top) {
            headerImage
            
            HStack {
                backButton
                Spacer()
                helpTooltip
            }
            .padding(.horizontal, 20)
        }
        
//        .overlay(alignment: .bottom) {
//            Rectangle()
//                .frame(height: 48)
//                .foregroundStyle(.white)
//                .cornerRadius(24, corners: [.topLeft, .topRight])
//        }
    }
    
    var headerImage: some View {
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
            .foregroundStyle(Color.label.primary)
    }
    
    var helpTooltip: some View {
        HStack(spacing: 5) {
            helpTooltipTitle
            helpTooltipImage
        }
        .padding(8)
        .background(
            Color.background.primary.opacity(0.7),
            in: .rect(cornerRadius: 20)
        )
        .padding(.leading, 10)
    }
    
    var helpTooltipTitle: some View {
        Text("Swipe to search by ingredients")
            .foregroundStyle(Color.label.primary)
            .font(.caption2)
    }
    
    var helpTooltipImage: some View {
        Image(systemName: "chevron.right")
            .resizable()
            .scaledToFit()
            .frame(width: 10, height: 8)
            .foregroundStyle(Color.label.primary)
    }
}


#Preview {
    SearchResultsUI()
}

//// MARK: - Toolbar
//
//private extension SearchResultsUI {
//    
//    var backButton: some View {
//        Button(
//            action: { print("back button") },
//            label: { backButtonImage }
//        )
//        .frame(width: 40, height: 40)
//        .background(Color.background.ghost, in: Circle())
//    }
//    
//    var backButtonImage: some View {
//        Image(systemName: "arrow.backward")
//        .resizable()
//        .scaledToFit()
//        .frame(width: 20, height: 14)
//        .foregroundColor(.white)
//        .offset(x: 2)
//    }
//    
//    var helpTooltip: some View {
//        HStack(spacing: 10) {
//            helpTooltipTitle
//            helpTooltipImage
//        }
//        .padding(.vertical, 8)
//        .padding(.horizontal, 8)
//        .background(
//            Color.white.opacity(0.7),
//            in: RoundedRectangle(cornerRadius: 12)
//        )
//    }
//    
//    var helpTooltipTitle: some View {
//        Text("Swipe to search by ingredients")
//        .font(.callout)
//        .foregroundColor(.black)
//        .fontWeight(.bold)
//    }
//    
//    var helpTooltipImage: some View {
//        Image(systemName: "chevron.left")
//        .resizable()
//        .scaledToFit()
//        .frame(width: 10, height: 8)
//        .foregroundColor(.black)
//        .rotationEffect(.degrees(180))
//    }
//}
//
