//
//  VideoInteractor.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 18/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

class VideoInteractor: VideoInteractorInputProtocol {
    
    // MARK: - Attributes
    
    var interactorOutput: VideoInteractorOutputProtocol?
    var dataManager: VideoDataManagerInputProtocol?
    
    // MARK: - Fetching
    
    func fetchVideoDetails(forVideo video: Video) {
        dataManager?.fetchVideoDetails(forVideo: video)
    }
    
}

extension VideoInteractor: VideoDataManagerOutputProtocol {
    
    func onVideoDetailsFetched(video: Video) {
        interactorOutput?.videoDetailsFetched(video: video)
    }
    
    func onError() {
        interactorOutput?.onError()
    }
    
}
