//
//  UIKitButtonLarge.swift
//  RecipesBook
//
//  Created by Руслан  on 26.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import Foundation

struct UIKitButtonLarge: UIKitButtonSize {
    let height: CGFloat = 46
    let imageSize: CGSize = CGSize(width: 15, height: 15)
}

extension UIKitButtonSize where Self == UIKitButtonLarge {
    static var large: UIKitButtonSize { UIKitButtonLarge() }
}
