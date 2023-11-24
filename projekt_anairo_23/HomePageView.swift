//
//  HomePageView.swift
//  projekt_anairo_23
//
//  Created by Jakub Iwaszek on 03/11/2023.
//

import SwiftUI

struct HomePageView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text("text")
            }
            .background(Color.gray)
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    HomePageView()
}
