//
//  VideoProtocols.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import UIKit

// MARK: - Data Manager Protocols

protocol VideoDataManagerInputProtocol: class {
    var dataManagerOutPut: VideoDataManagerOutputProtocol? { get set }
    func fetchVideoDetails(forVideo video: Video)
}

protocol VideoDataManagerOutputProtocol: class {
    func onVideoDetailsFetched(video: Video)
    func onError()
}

// MARK: - Interactor Protocols

protocol VideoInteractorInputProtocol: class {
    var interactorOutput: VideoInteractorOutputProtocol? { get set }
    var dataManager: VideoDataManagerInputProtocol? { get set }
    func fetchVideoDetails(forVideo video: Video)
}

protocol VideoInteractorOutputProtocol: class {
    func videoDetailsFetched(video: Video)
    func onError()
}

// MARK: - View Protocols

protocol VideoViewProtocol: class {
    var presenter: VideoPresenterProtocol? { get set }
    func showVideoDetails(_ video: Video)
    func showError()
    func showLoading()
    func hideLoading()
}

// MARK: - Router Protocols

protocol VideoWireFrameProtocol: class {
    static func createVideoDetailsViewController(forVideo video: Video) -> UIViewController
}

// MARK: - Presenter Protocols

protocol VideoPresenterProtocol: class {
    var view: VideoViewProtocol? { get set }
    var router: VideoWireFrameProtocol? { get set }
    var interactor: VideoInteractorInputProtocol? { get set }
    var video: Video? { get set }
    
    func viewDidLoad()
}
