//
//  FruitRowView.swift
//  Fructus
//
//  Created by Kamalesh Kumar on 14/02/24.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: - Properties
    let fruit: Fruit

    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3,x: 2,y: 2)
                .background {
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                }
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(Color.secondary)
            }
        }
    }
}

#Preview {
    FruitRowView(fruit: fruitData.first!).previewLayout(.sizeThatFits)
        .padding()
}
