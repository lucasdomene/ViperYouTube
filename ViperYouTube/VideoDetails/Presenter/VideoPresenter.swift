//
//  VideoPresenter.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation

class VideoPresenter: VideoPresenterProtocol {
    
    // MARK: - Attributes
    
    weak var view: VideoViewProtocol?
    var router: VideoWireFrameProtocol?
    var interactor: VideoInteractorInputProtocol?
    var video: Video?
    
    // MARK: - Life Cycle
    
    func viewDidLoad() {
        view?.showLoading()
        interactor?.fetchVideoDetails(forVideo: video!)
    }
    
}

extension VideoPresenter: VideoInteractorOutputProtocol {
    
    func videoDetailsFetched(video: Video) {
        view?.hideLoading()
        view?.showVideoDetails(video)
    }
    
    func onError() {
        view?.hideLoading()
        view?.showError()
    }
    
}
