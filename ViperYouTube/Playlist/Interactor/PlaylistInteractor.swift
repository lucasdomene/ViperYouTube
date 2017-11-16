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
    
    func fetchPlaylists() {
        PlaylistDataManager().fetchPlaylists(forChannel: "snippet")
    }
    
}
