//
//  Post.swift
//  Instagram Clone
//
//  Created by Sorfian on 05/05/23.
//

import Foundation

struct Post {
    
    // MARK: - Properties
    
    var postId: String
    var imageFileURL: String
    var user: String
    var votes: Int
    var timestamp: Int
    
    // MARK: - Firebase Keys
    
    enum PostInfoKey {
        static let imageFileURL = "imageFileURL"
        static let user = "user"
        static let votes = "votes"
        static let timestamp = "timestamp"
    }
    
    // MARK: - Initialization
    
    init(postId: String, imageFileURL: String, user: String, votes: Int, timestamp: Int = Int(Date().timeIntervalSince1970 * 1000)) {
        self.postId = postId
        self.imageFileURL = imageFileURL
        self.user = user
        self.votes = votes
        self.timestamp = timestamp
    }
    
    init?(postId: String, postInfo: [String: Any]) {
        guard let imageFileURL = postInfo[PostInfoKey.imageFileURL] as? String,
            let user = postInfo[PostInfoKey.user] as? String,
            let votes = postInfo[PostInfoKey.votes] as? Int,
            let timestamp = postInfo[PostInfoKey.timestamp] as? Int else {
                
                return nil
        }
        
        self = Post(postId: postId, imageFileURL: imageFileURL, user: user, votes: votes, timestamp: timestamp)
    }
}
