//
//  UIKitButtonTertiary.swift
//  RecipesBook
//
//  Created by Руслан  on 26.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

struct UIKitButtonTertiary: UIKitButtonAppearence {
    let font: Font = .title
    let weight: Font.Weight = .semibold
    let foregroundColor: Color = Color(uiColor: .tertiaryLabel)
    let backgroundColor: Color = Color(uiColor: .tertiarySystemBackground)
}

extension UIKitButtonAppearence where Self == UIKitButtonTertiary {
    static var tertiary: UIKitButtonAppearence { UIKitButtonTertiary() }
}
