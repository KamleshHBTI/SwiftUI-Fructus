//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Kamalesh Kumar on 14/02/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - Properties
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protien", "Vitamins", "Minerals"]
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //: Box
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitData.first!)
        .preferredColorScheme(.dark)
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}
