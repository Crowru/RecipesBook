//
//  LightTheme.swift
//  RecipesBook
//
//  Created by Руслан  on 24.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

struct LightTheme: Theme {
    let colors: Colors = LightColors()
    let fonts: Fonts = FontsImp()
}

struct LightColors: Colors {
    let background: BackgroundColors = LightBackgroundColors()
    let label: LabelColors = LightLabelColors()
}

struct LightBackgroundColors: BackgroundColors {
    let primary: Color = .primary
    let secondary: Color = .secondary
    let ghost: Color = .gray
    let tertiary: Color = .gray.opacity(0.2)
}

struct LightLabelColors: LabelColors {
    let primary: Color = .white
    let secondary: Color = .secondary
    let tertiary: Color = Color(uiColor: UIColor.lightGray)
}
