//
//  FeedStore.swift
//  FizzPlayground
//

/**
 TODO: implement class FeedStore
 1)  use FeedStore as the central source of data
 2)  use some sorting mechanism to sort all feed items
 */
import Foundation

class FeedStore {
  let allFeedItems = [
    FeedItem(handleName: "user1", createdTimestamp: 1702407894, contentText: "Test content", numOfVotes: 50),
    FeedItem(handleName: "user2", createdTimestamp: 1699844694, contentText: "Test content", numOfVotes: 40),
    FeedItem(handleName: "user3", createdTimestamp: 1702350294, contentText: "Test content", numOfVotes: 32),
    FeedItem(handleName: "user4", createdTimestamp: 1702353894, contentText: "Test content", numOfVotes: 55),
    FeedItem(handleName: "user5", createdTimestamp: 1702357494, contentText: "Test content", numOfVotes: 60),
    FeedItem(handleName: "user6", createdTimestamp: 1702364694, contentText: "Test content", numOfVotes: 90),
    FeedItem(handleName: "user7", createdTimestamp: 1702451094, contentText: "Test content", numOfVotes: 10000),
    FeedItem(handleName: "user8", createdTimestamp: 1702105494, contentText: "Test content", numOfVotes: 1),
    FeedItem(handleName: "user9", createdTimestamp: 1702105494, contentText: "Test content", numOfVotes: 5),
    FeedItem(handleName: "user10", createdTimestamp: 1701932694, contentText: """
             Test content, long long long long long long long long long long long long long
             
             
             long long long long long long long long long long long long long
             
             
             
             long long long long long long long long long long long long long
             
             long long long long long long long long long long long long long
                       
                       
                       
             long long long long long long long long long long long long long
             """, numOfVotes: 3),
  ]
}

struct FeedItem: Codable, Hashable {
  var handleName: String
  var createdTimestamp: Double
  var contentText: String
  var numOfVotes: Int
}
