//
//  MainTabView.swift
//  projekt_anairo_23
//
//  Created by Jakub Iwaszek on 24/11/2023.
//

import SwiftUI

struct MainTabView: View {
    @State private var selection = 0

    var body: some View {
        TabView(selection: $selection) {
            HomePageView()
                .tag(0)
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
            Text("second view")
                .tag(1)
                .tabItem {
                    Text("Second")
                }
        }
        .toolbarBackground(Color.mainBackgroundColor, for: .automatic)
    }
}

#Preview {
    MainTabView()
}
