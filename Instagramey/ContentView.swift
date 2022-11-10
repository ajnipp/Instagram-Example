//
//  ContentView.swift
//  Instagramey
//
//  Created by AlecNipp on 9/21/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        FeedView(feed: Feed.example)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
