//
//  SettingsView.swift
//  Fructus
//
//  Created by Kamalesh Kumar on 14/02/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false

    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    //: Section 1
                    GroupBox(label: SettingsLabelView(labelString: "Fructus", labelImage: "info.circle")) {
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: .center) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                              .font(.footnote)
                        }
                    }

                    //: Section 2
                    GroupBox(
                        label: SettingsLabelView(labelString: "Customization", labelImage: "paintbrush")
                    ) {
                      Divider().padding(.vertical, 4)

                      Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                        .padding(.vertical, 8)
                        .frame(minHeight: 60)
                        .layoutPriority(1)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)

                      Toggle(isOn: $isOnboarding) {
                        if isOnboarding {
                          Text("Restarted".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(Color.green)
                        } else {
                          Text("Restart".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(Color.secondary)
                        }
                      }
                      .padding()
                      .background(
                        Color(UIColor.tertiarySystemBackground)
                          .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                      )
                    }

                    //: Section 3
                    GroupBox(label: SettingsLabelView(labelString: "Application", labelImage: "apps.iphone")) {
                        SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 16")
                        SettingsRowView(name: "Website", linkLabel: "Credo Academy", linkDestination: "credo.academy")
                        SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SettingsRowView(name: "SwiftUI", content: "4")
                        SettingsRowView(name: "Version", content: "1.5.0")
                    }

                }//: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .padding()
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
            }//: ScrollView

        } //: Navigation
    }
}

#Preview {
    SettingsView()
}
