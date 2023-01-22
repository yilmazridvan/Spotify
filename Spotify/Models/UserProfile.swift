//
//  UserProfile.swift
//  Spotify
//
//  Created by Rıdvan Yılmaz on 12.01.2023.
//

import Foundation

struct UserProfile: Codable {
    let country: String
    let display_name: String
    let email: String
    let explicit_content: [String: Int]
    let external_urls: [String: String]
//    let followers: [String: Codable?]
    let id: String
    let product: String
    let images: [userImage]
}

struct userImage: Codable {
    let url: String
}
