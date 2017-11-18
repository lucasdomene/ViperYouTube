//
//  Video.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation
import ObjectMapper

struct Video {
    var id: String = ""
    var title: String = ""
    var thumbnail: String = ""
}

extension Video: Mappable {
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        id <- map["snippet.resourceId.videoId"]
        title <- map["snippet.title"]
        thumbnail <- map["snippet.thumbnails.medium.url"]
    }
}

