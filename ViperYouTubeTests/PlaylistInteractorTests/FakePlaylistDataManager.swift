//
//  FakePlaylistDataManager.swift
//  ViperYouTubeTests
//
//  Created by Lucas Domene Firmo on 18/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation
@testable import ViperYouTube

class FakePlaylistDataManager: PlaylistDataManagerInputProtocol {
    
    var shouldFail = false
    var outputRequestHandler: PlaylistDataManagerOutputProtocol?
    
    func fetchPlaylists(forChannel channelID: String) {
        if shouldFail {
            outputRequestHandler?.onError()
        } else {
            let playlist = Playlist(id: "playlistID", title: "playlistTitle", thumbnail: "thumbnailTitle")
            outputRequestHandler?.onPlaylistsFetched(playlists: [playlist])
        }
    }
    
}
