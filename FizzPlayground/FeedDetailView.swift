//
//  FeedDetailView.swift
//  FizzPlayground
//

import SwiftUI

/**
1) Implement FeedDetailView here, each view looks like below
 -----------------------------------------
 | < back
 | handlerName         createdDate(yyyy:mm:dd)                  |
 | content text goes here, long long long long long long     |
 | content text goes here, long long long long long long     |
 | content text goes here, long long long long long long     |
 | content text goes here, long long long long long long     |
 | content text goes here, long long long long long long     |
 | numOfVotes                       [Up Vote] [Down Vote]       |
 -----------------------------------------
2) implement up vote button and down vote which increases/decreases the number of votes
3) implement back button, and numOfVotes are in sync
4) Show all content text 
 */
struct FeedDetailView: View {
    var body: some View {
        Text("This is Feed Detail View")
    }
}

#Preview {
    FeedDetailView()
}
