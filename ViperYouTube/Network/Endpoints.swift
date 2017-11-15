//
//  Endpoints.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 15/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation

struct API {
    static let baseURL = "https://www.googleapis.com/youtube/v3/"
    static let key = "AIzaSyBTbjUFwC5C29tnu9MJZm5kaWZ4hCKqgz0"
}

protocol Endpoint {
    var path: String { get }
    var url: String { get }
    var parameters: String { get }
}

enum Endpoint {
    
    enum Playlists: Endpoint {
        case fetch(part: String, channelID: String)
        
        public var path: String {
            switch self {
            case .fetch:
                return "playlists"
            }
        }
        
        public var url: String {
            switch self {
            case .fetch:
                return "\(API.baseUrl)\(path)\(parameters)"
            }
        }
        
        public var parameters: String {
            switch self {
            case .fetch(let part, let channelID):
                return "?part=\(part)&channelId=\(channelID)&key=\(API.key)"
            }
        }
    }
    
}
