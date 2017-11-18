//
//  FakePlaylistInteractor.swift
//  ViperYouTubeTests
//
//  Created by Lucas Domene Firmo on 18/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation
@testable import ViperYouTube

class FakePlaylistInteractor: PlaylistDataManagerOutputProtocol {
    
    weak var presenter: PlaylistInteractorOutputProtocol?
    
    func onPlaylistsFetched(playlists: [Playlist]) {
        presenter?.playlistsFetched(playlists: playlists)
    }
    
    func onError() {
        presenter?.onError()
    }
    
}
