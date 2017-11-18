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

enum Endpoints {
    
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
                return "\(API.baseURL)\(path)\(parameters)"
            }
        }
        
        public var parameters: String {
            switch self {
            case .fetch(let part, let channelID):
                return "?part=\(part)&channelId=\(channelID)&key=\(API.key)"
            }
        }
    }
    
    enum PlaylistDetails: Endpoint {
        case fetch(part: String, playlistID: String)
        
        public var path: String {
            switch self {
            case .fetch:
                return "playlistItems"
            }
        }
        
        public var url: String {
            switch self {
            case .fetch:
                return "\(API.baseURL)\(path)\(parameters)"
            }
        }
        
        public var parameters: String {
            switch self {
            case .fetch(let part, let playlistID):
                return "?part=\(part)&playlistId=\(playlistID)&key=\(API.key)"
            }
        }
    }
    
    enum VideoDetails: Endpoint {
        case fetch(part: String, videoID: String)
        
        public var path: String {
            switch self {
            case .fetch:
                return "videos"
            }
        }
        
        public var url: String {
            switch self {
            case .fetch:
                return "\(API.baseURL)\(path)\(parameters)"
            }
        }
        
        public var parameters: String {
            switch self {
            case .fetch(let part, let videoID):
                return "?part=\(part)&id=\(videoID)&key=\(API.key)"
            }
        }
    }
    
}
