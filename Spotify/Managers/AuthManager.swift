//
//  AuthManager.swift
//  Spotify
//
//  Created by Rıdvan Yılmaz on 12.01.2023.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "4f957a5fe89243168dc901b806d676a2"
        static let clientSecret = "8ff8e3440f6a4081835964de4b73b321"
    }
    
    private init() {}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let base = "https://accounts.spotify.com/authorize"
        let redirectURI = "https://github.com/yilmazridvan"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
    }
    
    var isSignedIn: Bool = false
    
    private var accessToken: String? = ""
    
    private var refreshToken: String? = ""
    
    private var tokenExpirationDate: Date? = nil
    
    private var shouldRefreshToken: Bool = false
    
    public func exchangeCodeForToken(code: String,
                                     completion: @escaping ((Bool) -> Void)
    ) {
       // Get Token
    }
    public func refreshAccessToken() {
        
    }
    
    private func cacheToken() {
        
    }
}
