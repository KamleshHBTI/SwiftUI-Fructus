//
//  FruitCardView.swift
//  Fructus
//
//  Created by Kamalesh Kumar on 14/02/24.
//

import SwiftUI

struct FruitCardView: View {

    // MARK: - Properties
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Fruit Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // Fruit Title
                Text(fruit.title)
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                // Fruit Headline
                Text(fruit.headline)
                    .foregroundStyle(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // Button Start
                StartButtonView()
            }
            .onAppear {
                withAnimation(.easeOut(duration: 0.5)) {
                    isAnimating.toggle()
                }
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }

}

// MARK: - Preview
#Preview {
    FruitCardView(fruit: fruitData.first!)
        .previewLayout(.fixed(width: 320, height: 640))
}
