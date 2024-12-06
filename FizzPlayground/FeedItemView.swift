//
//  FeedItemView.swift
//  FizzPlayground
//
//

import SwiftUI

/**
1) Implement FeedItemView here, each view looks like below
 -----------------------------------------
 | handlerName         createdDate(yyyy:mm:dd)                  |
 | content text goes here.... (up to 200 chars)                   |
 | numOfVotes                       [Up Vote] [Down Vote]      |
 -----------------------------------------
2) implement up vote button and down vote which increases/decreases the number of votes
3) only show up to 200 chars of content text 
4) click on FeedItemView to navigate to FeedDetailView
 */

struct FeedItemView: View {
    var feedItem: FeedItem
    
    //    static var signUpDate: Date {
    //        let seconds = feedItem.createdTimestamp
    //        let date = Date(timeIntervalSince1970: TimeInterval(seconds))
    //    }
    
    @State private var votes: Int
    @State private var signUpDate: Date
    
    init(feedItem: FeedItem, votes: Int = 0, signUpDate: Date = Date.now) {
        self.feedItem = feedItem
        self.votes = feedItem.numOfVotes
        let seconds = feedItem.createdTimestamp
        self.signUpDate = Date(timeIntervalSince1970: TimeInterval(seconds))
    }
    
    
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 100){
                Text(feedItem.handleName)
                Text(signUpDate.formatted(date: .abbreviated, time: .omitted))
            }
            
            Text(feedItem.contentText.prefix(200)).lineLimit(1)
            
            Stepper("\(votes.formatted()) votes", value: $votes, step: 1)
            
        }
    }
}


#Preview {
    let feedItem = FeedItem(handleName: "user1", createdTimestamp: 1702407894, contentText: "Test content", numOfVotes: 50)
    
    return FeedItemView(feedItem: feedItem)
}
