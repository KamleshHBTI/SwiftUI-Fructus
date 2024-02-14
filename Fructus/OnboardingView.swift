//
//  OnboardingView.swift
//  Fructus
//
//  Created by Kamalesh Kumar on 14/02/24.
//

import SwiftUI

struct OnboardingView: View {
    let data = fruitData
    var body: some View {
        TabView {
            ForEach(data) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)

    }
}

#Preview {
    OnboardingView()
}
