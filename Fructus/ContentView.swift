//
//  ContentView.swift
//  Fructus
//
//  Created by Kamalesh Kumar on 14/02/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State private var isShowingSettings: Bool = false
    let fruits: [Fruit] = fruitData
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            })
            .sheet(isPresented: $isShowingSettings, content: {
                SettingsView()
            })
        }
    }
}

#Preview {
    ContentView()
}
