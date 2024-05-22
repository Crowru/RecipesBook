//
//  UIKitButtonPrimary.swift
//  RecipesBook
//
//  Created by Руслан  on 26.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

struct UIKitButtonPrimary: UIKitButtonType {
    let `default`: UIKitButtonAppearence = UIKitButtonPrimaryDefault()
    let enabled: UIKitButtonAppearence = UIKitButtonPrimaryEnabled()
    let pressed: UIKitButtonAppearence = UIKitButtonPrimaryPressed()
    let disabled: UIKitButtonAppearence = UIKitButtonPrimaryDisabled()
}

private struct UIKitButtonPrimaryDefault: UIKitButtonAppearence {
    let font: Font = .title
    let weight: Font.Weight = .regular
    let foregroundColor: Color = .label.primary
    let backgroundColor: Color = .background.primary
}

private struct UIKitButtonPrimaryEnabled: UIKitButtonAppearence {
    let font: Font = .title
    let weight: Font.Weight = .regular
    let foregroundColor: Color = .label.primary.opacity(0.9)
    let backgroundColor: Color = .background.primary.opacity(0.9)
}

private struct UIKitButtonPrimaryPressed: UIKitButtonAppearence {
    let font: Font = .title
    let weight: Font.Weight = .regular
    let foregroundColor: Color = .label.primary.opacity(0.4)
    let backgroundColor: Color = .background.primary.opacity(0.4)
}

private struct UIKitButtonPrimaryDisabled: UIKitButtonAppearence {
    let font: Font = .title
    let weight: Font.Weight = .regular
    let foregroundColor: Color = .black.opacity(0.7)
    let backgroundColor: Color = .gray
}

extension UIKitButtonType where Self == UIKitButtonPrimary {
    static var primary: UIKitButtonType { UIKitButtonPrimary() }
}
