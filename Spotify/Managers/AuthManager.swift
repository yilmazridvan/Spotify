//
//  AuthManager.swift
//  Spotify
//
//  Created by Rıdvan Yılmaz on 12.01.2023.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    private init() {}
    
    var isSignedIn: Bool = false
    private var accessToken: String? = ""
    private var refreshToken: String? = ""
    private var tokenExpirationDate: Date? = nil
    private var shouldRefreshToken: Bool = false
}
