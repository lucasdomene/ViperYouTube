//
//  FakePlaylistPresenter.swift
//  ViperYouTubeTests
//
//  Created by Lucas Domene Firmo on 18/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation
@testable import ViperYouTube

class FakePlaylistPresenter: PlaylistInteractorOutputProtocol, PlaylistPresenterProtocol {
    
    var view: PlaylistViewProtocol?
    var interactor: PlaylistInteractorInputProtocol?
    var router: PlaylistWireframeProtocol? 
    
    var playlistsFetched = false
    var errorReturned = false
    var viewDidLoadCalled = false
    var showDetailsForPlaylistCalled = false
    
    func playlistsFetched(playlists: [Playlist]) {
        playlistsFetched = true
    }
    
    func onError() {
        errorReturned = true
    }
    
    func viewDidLoad() {
        viewDidLoadCalled = true
    }
    
    func showDetailsForPlaylist(_ playlist: Playlist) {
        showDetailsForPlaylistCalled = true
    }
    
}
