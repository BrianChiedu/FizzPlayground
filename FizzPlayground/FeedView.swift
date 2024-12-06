//
//  ContentView.swift
//  FizzPlayground
//

import SwiftUI

/**
TODO: Your goal is to create a Fizz playground app.
 1) The first view you are going to create is FeedView, which loads data from FeedStore, show FeedItems in a vertical scrollable view
 
 2) For each of the FeedItem, create a FeedItemView
 
 3) Navigate from each FeedItemView to FeedDetailView
 
 Please submit your code github, and send the github link back to Fizz Team for review
 */
struct FeedView: View {
    let iteratable: [FeedItem] = FeedStore().allFeedItems
    
    var body: some View {
        NavigationStack{
                List{
                        ForEach(iteratable, id: \.self){item in
                            NavigationLink(destination: FeedDetailView()){
                                FeedItemView(feedItem: item)
                            }
                        }
                    
                    .padding()
                }
                .navigationTitle("Fizz Playground")
        }
    }
}

#Preview {
  FeedView()
}
