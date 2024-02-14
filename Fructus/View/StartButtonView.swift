//
//  StartButtonView.swift
//  Fructus
//
//  Created by Kamalesh Kumar on 14/02/24.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?

    var body: some View {
        Button(action: { 
            isOnboarding = false
        }) {
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle"
                )
                .imageScale(.large)
            }
            .padding(.horizontal, 60)
            .padding(.vertical, 16)
            .background {
                Capsule().strokeBorder( Color.white, lineWidth: 1.25)
            }
        }
        .tint(Color.white)
    }
}

#Preview {
    StartButtonView().previewLayout(.sizeThatFits)
}
