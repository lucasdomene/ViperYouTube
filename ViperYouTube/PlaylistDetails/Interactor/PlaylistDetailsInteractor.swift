//
//  PlaylistDetailsInteractor.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation

class PlaylistDetailsInteractor: PlaylistDetailsInteractorInputProtocol {
    
    // MARK: - Attributes
    
    var interactorOutput: PlaylistDetailsInteractorOutputProtocol?
    var dataManager: PlaylistDetailsDataManagerInputProtocol?
    
    // MARK: - Fetching
    
    func fetchVideos(forPlaylist playlist: Playlist) {
        dataManager?.fetchVideos(forPlaylist: playlist)
    }
    
}

extension PlaylistDetailsInteractor: PlaylistDetailsDataManagerOutputProtocol {
    
    func onVideosFetched(videos: [Video]) {
        interactorOutput?.videosFetched(videos: videos)
    }
    
    func onError() {
        interactorOutput?.onError()
    }
    
}
