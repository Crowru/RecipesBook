//
//  ThemeManager.swift
//  RecipesBook
//
//  Created by Руслан  on 24.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

final class ThemeManager: ObservableObject {
    
    @Published var currentThemeType: ThemeTypes
    
    @Published var themes: [ThemeTypes: Theme]
    
    var currentTheme: Theme {
        themes[currentThemeType]!
    }
    
    static let shared = ThemeManager()
    
    private init(
        themes: [ThemeTypes: Theme] = [:],
        currentThemeType: ThemeTypes = .light
        /// поменять тему
    ) {
        self.themes = themes
        self.currentThemeType = currentThemeType
    }
}

extension Font {
    static var heading1: Font {
        ThemeManager.shared.currentTheme.fonts.heading1
    }

    static var heading2: Font {
        ThemeManager.shared.currentTheme.fonts.heading2
    }

    static var heading3: Font {
        ThemeManager.shared.currentTheme.fonts.heading3
    }

    static var heading4: Font {
        ThemeManager.shared.currentTheme.fonts.heading4
    }

    static var title: Font {
        ThemeManager.shared.currentTheme.fonts.title
    }

    static var body: Font {
        ThemeManager.shared.currentTheme.fonts.body
    }

    static var description: Font {
        ThemeManager.shared.currentTheme.fonts.description
    }

    static var numbersS: Font {
        ThemeManager.shared.currentTheme.fonts.numbersS
    }

    static var numbersM: Font {
        ThemeManager.shared.currentTheme.fonts.numbersM
    }
}
