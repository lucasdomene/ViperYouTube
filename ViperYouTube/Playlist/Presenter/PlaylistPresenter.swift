//
//  PlaylistPresenter.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 16/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation

class PlaylistPresenter: PlaylistPresenterProtocol {
    weak var view: PlaylistViewProtocol?
    var interactor: PlaylistInteractorInputProtocol?
    var router: PlaylistWireframeProtocol?
    
    func viewDidLoad() {
        // call view delegate
        interactor?.fetchPlaylists()
    }
    
    func showDetailsForPlaylist(_ playlist: Playlist) {
        router?.presentDetailsForPlaylist(playlist)
    }
}

extension PlaylistPresenter: PlaylistInteractorOutputProtocol {
    func playlistsFetched(playlists: [Playlist]) {
        // call view delegate
    }
    
    func onError() {
        // call view delegate
    }
}
