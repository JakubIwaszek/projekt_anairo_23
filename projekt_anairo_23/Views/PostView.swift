//
//  PostView.swift
//  projekt_anairo_23
//
//  Created by Bartosz Lipiński on 24/11/2023.
//

import SwiftUI

struct PostView: View {
    var post: Post
    
    var body: some View {
        VStack {
            userView
            Text(post.contentText)
                .frame(maxWidth: .infinity, alignment: .leading)
//                .padding([.leading, .top, .trailing], 16)
            Image("fala")
                .resizable()
                .frame(maxWidth: .infinity)
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding(16)
        .frame(alignment: .leading)
        .background(Color.teal)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
    
    private var userView: some View {
        HStack {
            Image(systemName: "person.circle.fill")
            Text("User1")
        }
    }
}

//
//#Preview {
//    PostView(post: post)
//}
