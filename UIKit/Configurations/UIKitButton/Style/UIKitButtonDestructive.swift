//
//  UIKitButtonDestructive.swift
//  RecipesBook
//
//  Created by Руслан  on 26.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

struct UIKitButtonDestructive: UIKitButtonAppearence {
    let font: Font = .body
    let weight: Font.Weight = .bold
    let foregroundColor: Color = .white
    let backgroundColor: Color = .red
}

extension UIKitButtonAppearence where Self == UIKitButtonDestructive {
    static var destructive: UIKitButtonAppearence { UIKitButtonDestructive() }
}
