//
//  FakePlaylistView.swift
//  ViperYouTubeTests
//
//  Created by Lucas Domene Firmo on 18/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation
@testable import ViperYouTube

class FakePlaylistView {
    
    var presenter: PlaylistPresenterProtocol?
    
    func viewDidLoad() {
        presenter?.viewDidLoad()
    }
    
    func playlistSelected() {
        presenter?.showDetailsForPlaylist(Playlist())
    }
    
}
