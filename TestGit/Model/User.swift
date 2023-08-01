//
//  User.swift
//  TestGit
//
//  Created by Tapan Raut on 01/08/23.
//

import Foundation

class User{
    var id: String
    var userName: String
    var profileImage: String?
    var fullName: String?
    var bio: String
    var email: String
    
    init(id: String, userName: String, profileImage: String? = nil, fullName: String? = nil, bio: String, email: String) {
        self.id = id
        self.userName = userName
        self.profileImage = profileImage
        self.fullName = fullName
        self.bio = bio
        self.email = email
    }
}
extension User {
    static var MOCK_USER: [User] = [
    
        .init(id: "1234", userName: "Tapan", profileImage: "", fullName: "Tapan Raut", bio: "Tapan is working in Accenture", email: "tapan@gmail.com" )
    ]
}
