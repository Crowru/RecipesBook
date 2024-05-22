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
    let primary: Color = .white
    let secondary: Color = .secondary
    let ghost: Color = .gray
    let tertiary: Color = .gray.opacity(0.2)
}

struct DarkLabelColors: LabelColors {
    let primary: Color = .primary
    let secondary: Color = .secondary 
    let tertiary: Color = Color(uiColor: UIColor.lightGray)
}

