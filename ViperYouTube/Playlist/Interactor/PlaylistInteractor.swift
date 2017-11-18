//
//  PlaylistInteractor.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 16/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation

class PlaylistInteractor: PlaylistInteractorInputProtocol {
    
    // MARK: - Attributes
    
    weak var presenter: PlaylistInteractorOutputProtocol?
    var dataManager: PlaylistDataManagerInputProtocol?
    
    // MARK: - Fetching
    
    func fetchPlaylists() {
        dataManager?.fetchPlaylists(forChannel: "UCE_M8A5yxnLfW0KghEeajjw")
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
