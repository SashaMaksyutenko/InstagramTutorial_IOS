//
//  User.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 11.07.2023.
//

import Foundation
import Firebase
struct User:Identifiable,Hashable,Codable{
    let id: String
    var username:String
    var profileImageUrl:String?
    var fullname:String?
    var bio:String?
    let email:String
    var isCurrentUser:Bool{
        guard var currentUid=Auth.auth().currentUser?.uid else {return false}
        return currentUid==id
    }
}
extension User{
    static var MOCK_USERS:[User]=[
        .init(id: NSUUID().uuidString, username: "Venom", profileImageUrl: nil, fullname: "Eddie Brock", bio: "Venom is a sentient alien symbiote", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, username: "SpiderMan", profileImageUrl: nil, fullname: "Peter Parker", bio: "Spider-Man's secret identity is Peter Benjamin Parker", email: "spiderman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: nil, fullname: "Bruce Wayne", bio: "Gotham's Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "BlackPanther", profileImageUrl: "black panther 1", fullname: "T'Challa", bio: "Wakanda's King", email: "blackpanther@gmail.com"),
        .init(id: NSUUID().uuidString, username: "ironman", profileImageUrl: nil, fullname: "Tony Stark", bio: "Billionarie & inventor & playboy", email: "ironman@gmail.com"),
    ]
}
