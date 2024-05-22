//
//  UIKitButtonMedium.swift
//  RecipesBook
//
//  Created by Руслан  on 26.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import Foundation

struct UIKitButtonMedium: UIKitButtonSize {
    let height: CGFloat = 32
    let imageSize: CGSize = CGSize(width: 18, height: 18)
    let horizontalContentInset: CGFloat = 12
}

extension UIKitButtonSize where Self == UIKitButtonMedium {
    static var medium: UIKitButtonSize { UIKitButtonMedium() }
}
