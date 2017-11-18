//
//  FakePlaylistPresenter.swift
//  ViperYouTubeTests
//
//  Created by Lucas Domene Firmo on 18/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation
@testable import ViperYouTube

class FakePlaylistPresenter: PlaylistInteractorOutputProtocol {
    
    var playlistsFetched = false
    var errorReturned = false
    
    func playlistsFetched(playlists: [Playlist]) {
        playlistsFetched = true
    }
    
    func onError() {
        errorReturned = true
        
    }
    
}
