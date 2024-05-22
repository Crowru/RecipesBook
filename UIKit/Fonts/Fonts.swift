//
//  Fonts.swift
//  RecipesBook
//
//  Created by Руслан  on 25.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

protocol Fonts {
    var heading1: Font { get }
    var heading2: Font { get }
    var heading3: Font { get }
    var heading4: Font { get }

    var title: Font { get }
    var body: Font { get }

    var description: Font { get }
    var caption: Font { get }

    var numbersS: Font { get }
    var numbersM: Font { get }
}
