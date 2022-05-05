//
//  Models.swift
//  Instagram
//
//  Created by Yoo on 2022/05/03.
//

import Foundation

enum Gender {
    case male, female, other
}

struct User {
    let username: String
    let bio: String
    let name: (first: String, last: String)
    let profilePhoto: URL
    let birthDate: Date
    let gender: Gender
    let counts: UserCount
    let joinDate: Date
}

struct UserCount {
    let followers: Int
    let following: Int
    let posts: Int
}

public enum UserPostType: String {
    case photo = "Photo"
    case video = "Video"
}

/// Reposent
public struct UserPost {
    let identifier: String
    let postType: UserPostType
    let thumbnailImageURL: URL
    let postURL: URL // either video url or full resolution photo
    let caption: String?
    let likeCount: [PostLike]
    let comments: [PostComment]
    let createdDate: Date
    let taggedUsers: [String]
    let owwner: User
}

struct PostLike {
    let username: String
    let postIdentifier: String
    
}

struct CommentLike {
    let username: String
    let commentIdentifier: String
}

struct PostComment {
    let identifier: String
    let username: String
    let text: String
    let cratedDate: Date
    let likes: [CommentLike]
}
