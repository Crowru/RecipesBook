//
//  NetworkService.swift
//  RecipesBook
//
//  Created by Руслан  on 23.05.2024.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import Foundation

protocol NetworkService {
    func request() async throws -> Data
    func decode<T: Codable>(from data: Data) throws -> T
}
