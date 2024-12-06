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
    let feedItem: FeedItem
    
    //    static var signUpDate: Date {
    //        let seconds = feedItem.createdTimestamp
    //        let date = Date(timeIntervalSince1970: TimeInterval(seconds))
    //    }
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(spacing: 170){
                Text(feedItem.handleName)
                Text(Date.now.formatted(date: .abbreviated, time: .omitted))
            }
            
            Text(feedItem.contentText.prefix(200))
            
            Text("\(feedItem.numOfVotes) votes")
        }
    }
}


#Preview {
    let feedItem = FeedItem(handleName: "user1", createdTimestamp: 1702407894, contentText: "Test content", numOfVotes: 50)
    
    return FeedItemView(feedItem: feedItem)
}
