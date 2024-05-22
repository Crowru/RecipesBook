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
    let imageSize: CGSize = CGSize(width: 12, height: 12)
}

extension UIKitButtonSize where Self == UIKitButtonMedium {
    static var medium: UIKitButtonSize { UIKitButtonMedium() }
}
