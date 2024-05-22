//
//  UIKitButtonSmall.swift
//  RecipesBook
//
//  Created by Руслан  on 26.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import Foundation

struct UIKitButtonSmall: UIKitButtonSize {
    let height: CGFloat = 24
    let imageSize: CGSize = CGSize(width: 10, height: 10)
}

extension UIKitButtonSize where Self == UIKitButtonSmall {
    static var small: UIKitButtonSize { UIKitButtonSmall() }
}
