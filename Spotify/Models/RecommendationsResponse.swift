//
//  RecommendationsResponse.swift
//  Spotify
//
//  Created by Rıdvan Yılmaz on 18.02.2023.
//

import Foundation

struct RecommendationsResponse: Codable {
    let tracks: [AudioTrack]
}
