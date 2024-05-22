//
//  Colors+Ext.swift
//  RecipesBook
//
//  Created by Руслан  on 24.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

extension Color {
    
    static var background: BackgroundColors {
        ThemeManager.shared.currentTheme.colors.background
    }
    
    static var label: LabelColors {
        ThemeManager.shared.currentTheme.colors.label
    }
}
