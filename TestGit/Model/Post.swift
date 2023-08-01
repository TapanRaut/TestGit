//
//  Post.swift
//  TestGit
//
//  Created by Tapan Raut on 01/08/23.
//

import Foundation

class Post{
    var id: String
    var ownerId: String
    var caption: String
    var likes: Int
    var imageURL: String
    var timeStamp: Date
    var user: User?
    init(id: String, ownerId: String, caption: String, likes: Int, imageURL: String, timeStamp: Date, user: User? = nil) {
        self.id = id
        self.ownerId = ownerId
        self.caption = caption
        self.likes = likes
        self.imageURL = imageURL
        self.timeStamp = timeStamp
        self.user = user
    }
}
extension Post{
    static var MOCK_POST: [Post] = [
        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption: "Indian flag is very nice", likes: 20, imageURL: "", timeStamp: Date(), user: User.MOCK_USER[0])
    ]
}

