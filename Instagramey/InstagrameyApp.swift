//
//  InstagrameyApp.swift
//  Instagramey
//
//  Created by AlecNipp on 9/21/22.
//

import SwiftUI

@main
struct InstagrameyApp: App {
    var body: some Scene {
        WindowGroup {
            FeedView(feed: Feed.example)
        }
    }
}
