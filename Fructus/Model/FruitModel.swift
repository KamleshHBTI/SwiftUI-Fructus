//
//  FruitModel.swift
//  Fructus
//
//  Created by Kamalesh Kumar on 14/02/24.
//

import SwiftUI

// MARK: - Fruit Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
