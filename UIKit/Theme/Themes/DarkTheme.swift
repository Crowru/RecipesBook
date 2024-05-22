//
//  DarkTheme.swift
//  RecipesBook
//
//  Created by Руслан  on 24.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

struct DarkTheme: Theme {
    let colors: Colors = DarkColors()
    let fonts: Fonts = FontsImp()
}

struct DarkColors: Colors {
    let background: BackgroundColors = DarkBackgroundColors()
    let label: LabelColors = DarkLabelColors()
}

struct DarkBackgroundColors: BackgroundColors {
    let primary: Color = .blue
    let secondary: Color = .blue.opacity(0.5)
    let ghost: Color = .gray.opacity(0.5)
}

struct DarkLabelColors: LabelColors {
    let primary: Color = .green
    let secondary: Color = .green.opacity(0.5)
    let tertiary: Color = .gray.opacity(0.8)
}

