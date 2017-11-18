//
//  FakePlaylistOutputDataManager.swift
//  ViperYouTubeTests
//
//  Created by Lucas Domene Firmo on 18/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation
@testable import ViperYouTube

class FakePlaylistOutputDataManager: PlaylistDataManagerOutputProtocol {
    
    var playlistsFetched = false
    var errorReturned = false
    
    func onPlaylistsFetched(playlists: [Playlist]) {
        playlistsFetched = true
    }
    
    func onError() {
        errorReturned = true
    }
    
}
