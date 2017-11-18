//
//  PlaylistDetailsPresenter.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation

class PlaylistDetailsPresenter: PlaylistDetailsPresenterProtocol {
    
    var view: PlaylistDetailsViewProtocol?
    var interactor: PlaylistDetailsInteractorInputProtocol?
    var router: PlaylistDetailsWireFrameProtocol?
    var playlist: Playlist?
    
    func viewDidLoad() {
        view?.showLoading()
        interactor?.fetchVideos(forPlaylist: playlist!)
    }
    
    func showDetailsForVideo(_ video: Video) {
        router?.presentDetailsForVideo(fromView: view!, video: video)
    }
    
}

extension PlaylistDetailsPresenter: PlaylistDetailsInteractorOutputProtocol {
    
    func videosFetched(videos: [Video]) {
        view?.hideLoading()
        view?.showVideos(videos)
    }
    
    func onError() {
        view?.hideLoading()
        view?.showError()
    }
    
}
