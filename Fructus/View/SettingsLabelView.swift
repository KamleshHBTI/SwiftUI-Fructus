//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Kamalesh Kumar on 14/02/24.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelString: String
    var labelImage: String

    var body: some View {
        HStack {
            Text(labelString.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelString: "Fructus", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
}
