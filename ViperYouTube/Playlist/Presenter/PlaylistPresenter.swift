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
        view?.showLoading()
        interactor?.fetchPlaylists()
    }
    
    func showDetailsForPlaylist(_ playlist: Playlist) {
        router?.presentDetailsForPlaylist(fromView: view!, playlist: playlist)
    }
}

extension PlaylistPresenter: PlaylistInteractorOutputProtocol {
    func playlistsFetched(playlists: [Playlist]) {
        view?.hideLoading()
        view?.showPlaylists(playlists)
    }
    
    func onError() {
        view?.hideLoading()
        view?.showError()
    }
}
