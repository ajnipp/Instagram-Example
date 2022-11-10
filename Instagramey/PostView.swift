//
//  PostView.swift
//  Instagramey
//
//  Created by AlecNipp on 9/22/22.
//

import SwiftUI

struct PostView: View {
    let post: Post
    @State private var isLiked: Bool = false
    var body: some View {
        VStack {
            HStack {
                Image(post.author.profilePictureName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 30)
                Text("**\(post.author.username)**")
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            Image(post.imageName)
                .resizable()
                .scaledToFit()
            VStack(alignment: .leading, spacing: 10) {
                HStack(spacing: 15) {
                    Button(action: {
                        isLiked.toggle()
                    }, label: {
                        Image(systemName: isLiked ?  "heart.fill" : "heart")
                            .imageScale(.large)
                            .foregroundColor(isLiked ? .red : .primary)
                    })
                    Button(action: {
                        // do nothing
                    }, label: {
                        Image(systemName: "message")
                            .imageScale(.large)
                            .foregroundColor(.primary)
                    })
                    Button(action: {
                        // do nothing
                    }, label: {
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                            .foregroundColor(.primary)
                    })
                    Spacer()
                    Button(action: {
                        // do nothing
                    }, label: {
                        Image(systemName: "bookmark")
                            .imageScale(.large)
                            .foregroundColor(.primary)
                    })
                }
                Text("**\(post.likeCount) likes from poeple you like**")
                    .font(.subheadline)
                Text("**\(post.author.username)** \(post.caption)")
                    .font(.subheadline)
            }
            .padding(.horizontal, 8)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: Post.example)
    }
}
