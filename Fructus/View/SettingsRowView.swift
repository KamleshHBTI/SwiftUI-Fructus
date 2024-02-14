//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Kamalesh Kumar on 14/02/24.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: Properties
    var name: String
    var content: String?
    var linkLabel: String?
    var linkDestination: String?

    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundStyle(Color.gray)
                Spacer()
                if let value = content {
                    Text(value)
                        .fontWeight(.medium)
                } else if let linkLbl = linkLabel, let linkDest = linkDestination {
                    Link(linkLbl, destination: URL(string: "https://\(linkDest)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundStyle(Color.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    SettingsRowView(name: "Developer", content: "John / Jane")
}
