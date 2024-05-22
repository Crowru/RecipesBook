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
    let foregroundColor: Color = .label.primary
    let backgroundColor: Color = .background.primary
}

private struct UIKitButtonPrimaryPressed: UIKitButtonAppearence {
    let font: Font = .title
    let weight: Font.Weight = .regular
    let foregroundColor: Color = .label.secondary
    let backgroundColor: Color = .background.secondary
}

private struct UIKitButtonPrimaryDisabled: UIKitButtonAppearence {
    let font: Font = .title
    let weight: Font.Weight = .regular
    let foregroundColor: Color = .label.tertiary
    let backgroundColor: Color = .background.ghost // todo
}

extension UIKitButtonType where Self == UIKitButtonPrimary {
    static var primary: UIKitButtonType { UIKitButtonPrimary() }
}
