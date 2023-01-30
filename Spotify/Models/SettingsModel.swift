//
//  SettingsModel.swift
//  Spotify
//
//  Created by Rıdvan Yılmaz on 27.01.2023.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
