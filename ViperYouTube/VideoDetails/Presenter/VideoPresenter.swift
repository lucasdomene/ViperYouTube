//
//  VideoPresenter.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation

class VideoPresenter: VideoPresenterProtocol {
    
    weak var view: VideoViewProtocol?
    var wireFrame: VideoWireFrameProtocol?
    var video: Video?
    
    func viewDidLoad() {
        view?.showVideoDetails(video!)
    }
    
}
