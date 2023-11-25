//
//  HomePageView.swift
//  projekt_anairo_23
//
//  Created by Jakub Iwaszek on 03/11/2023.
//

import SwiftUI

struct HomePageView: View {
    @State private var exampleData: [Post] = [
        Post(id: "1", contentText: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum"),
        Post(id: "2", contentText: "some new post new post new post new post")]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(exampleData, id: \.id) { post in
                        PostView(post: post)
                            .padding(.bottom, 30)
                    }
                }
                .padding(16)
            }
            .background(Color.mainBackgroundColor)
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    HomePageView()
}
