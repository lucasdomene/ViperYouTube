//
//  PlaylistDataManager.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 15/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation
import Alamofire

class PlaylistDataManager {
    
    func fetchPlaylists(forChannel channelID: String) {
        Alamofire.request(Endpoints.Playlists.fetch(part: "snippet", channelID: channelID).url, method: .get)
            .validate()
            .responseJSON { response in
            print(response)
        }
    }
    
}
