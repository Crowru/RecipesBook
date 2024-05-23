//
//  NetworkError.swift
//  RecipesBook
//
//  Created by Руслан  on 23.05.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case badURL    
    case badRequest
    case badResponse
    case localized(description: String)
}
