//
//  UIKitButtonSecondary.swift
//  RecipesBook
//
//  Created by Руслан  on 26.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

struct UIKitButtonSecondary: UIKitButtonAppearence {
    let font: Font = .title2
    let weight: Font.Weight = .regular
    let foregroundColor: Color = Color(uiColor: .secondaryLabel)
    let backgroundColor: Color = .green
}

extension UIKitButtonAppearence where Self == UIKitButtonSecondary {
    static var secondary: UIKitButtonAppearence { UIKitButtonSecondary() }
}
