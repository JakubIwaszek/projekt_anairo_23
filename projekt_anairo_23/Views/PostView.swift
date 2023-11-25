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
                .frame(maxWidth: .infinity, alignment: .leading)
            Divider()
                .background(.white)
            contentView
        }
        .padding(16)
        .frame(alignment: .leading)
        .foregroundStyle(.white)
        .background(Color.postBackgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
    
    private var userView: some View {
        // TODO: Create user model
        HStack(alignment: .top) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 40, height: 40)
            Text("User1")
        }
    }
    
    private var contentView: some View {
        VStack {
            Text(post.contentText)
                .frame(maxWidth: .infinity, alignment: .leading)
            Image("fala")
                .resizable()
                .frame(maxWidth: .infinity)
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
}


#Preview {
    PostView(post: Post(id: "1", contentText: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum"))
}
