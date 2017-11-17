//
//  PlaylistInteractor.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 16/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation

class PlaylistInteractor: PlaylistInteractorInputProtocol {
    
    weak var presenter: PlaylistInteractorOutputProtocol?
    var dataManager: PlaylistDataManagerInputProtocol?
    
    func fetchPlaylists() {
        dataManager?.fetchPlaylists(forChannel: "snippet")
    }
    
}

extension PlaylistInteractor: PlaylistDataManagerOutputProtocol {
    func onPlaylistsFetched(playlists: [Playlist]) {
        presenter?.playlistsFetched(playlists: playlists)
    }
    
    func onError() {
        presenter?.onError()
    }
}
