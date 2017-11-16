//
//  Playlist.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 15/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation
import ObjectMapper

struct Playlist {
    var id: String = ""
    var title: String = ""
    var thumbnail: String = ""
}

extension Playlist: Mappable {
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        id <- map["id"]
        title <- map["snippet.title"]
        thumbnail <- map["snippet.thumbnails.medium.url"]
    }
}
