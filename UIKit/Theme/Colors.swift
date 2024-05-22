//
//  Colors.swift
//  RecipesBook
//
//  Created by Руслан  on 24.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

protocol Colors {
    var background: BackgroundColors { get }
    var label: LabelColors { get }
}

protocol BackgroundColors {
    var primary: Color { get }
    var secondary: Color { get }
    var ghost: Color { get }
    var tertiary: Color { get }
}

protocol LabelColors {
    var primary: Color { get }
    var secondary: Color { get }
    var tertiary: Color { get }
}
