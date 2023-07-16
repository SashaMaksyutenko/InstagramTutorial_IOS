//
//  Post.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 12.07.2023.
//

import Foundation
import Firebase
struct Post:Identifiable,Hashable,Codable{
    let id:String
    let ownerUid:String
    let caption:String
    var likes:Int
    let imageUrl:String
    let timeStamp:Timestamp
    var user:User?
}
extension Post{
    static var MOCK_POSTS:[Post]=[
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: " venom is hungry. Time to eat",
            likes: 223,
            imageUrl: "venom 3",
            timeStamp:Timestamp(),
            user: User.MOCK_USERS[0]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: " Wakanda forever",
            likes: 120,
            imageUrl: "black panther 6",
            timeStamp:Timestamp(),
            user: User.MOCK_USERS[3]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: " iron man",
            likes: 193,
            imageUrl: "ironman1",
            timeStamp:Timestamp(),
            user: User.MOCK_USERS[4]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: " reall spiderman",
            likes: 203,
            imageUrl: "spiderman4",
            timeStamp:Timestamp(),
            user: User.MOCK_USERS[1]),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: " batman is protecting Gotham",
            likes: 123,
            imageUrl: "batman1",
            timeStamp:Timestamp(),
            user: User.MOCK_USERS[2]),
    ]
}
