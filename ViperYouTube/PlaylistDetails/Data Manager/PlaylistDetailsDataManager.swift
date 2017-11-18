//
//  PlaylistDetailsDataManager.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation
import Alamofire

class PlaylistDetailsDataManager: PlaylistDetailsDataManagerInputProtocol {
    
    // MARK: - Attributes
    
    var dataManagerOutput: PlaylistDetailsDataManagerOutputProtocol?
    
    // MARK: - Fetching
    
    func fetchVideos(forPlaylist playlist: Playlist) {
        Alamofire.request(Endpoints.PlaylistDetails.fetch(part: "snippet", playlistID: playlist.id).url, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let json):
                guard let json = json as? [String: Any], let videos = json["items"] as? [[String: Any]] else {
                    self.dataManagerOutput?.onError()
                    return
                }
            self.dataManagerOutput?.onVideosFetched(videos: videos.map { return Video(JSON: $0)! })
            case .failure:
                self.dataManagerOutput?.onError()
            }
        }
    }
    
}
