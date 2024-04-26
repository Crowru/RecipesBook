//
//  VStack+Ext.swift
//  RecipesBook
//
//  Created by Руслан  on 25.04.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

extension VStack {
    init(alignment: HorizontalAlignment = .center, @ViewBuilder content: () -> Content) {
        self.init(alignment: alignment, spacing: 0, content: content)
    }
}
