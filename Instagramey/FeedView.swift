//
//  FeedView.swift
//  Instagramey
//
//  Created by AlecNipp on 9/22/22.
//

import SwiftUI

struct FeedView: View {
    let feed: Feed
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(feed.posts) { post in
                        PostView(post: post)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("cursive-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: {
                        PostView(post: Post.example)
                    }, label: {
                        Image(systemName: "paperplane")
                            .resizable()
                    })
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView(feed: Feed.example)
    }
}
