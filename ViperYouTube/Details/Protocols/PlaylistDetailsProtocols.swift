//
//  PlaylistDetailsProtocols.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

// MARK: - Data Manager Protocols

protocol PlaylistDetailsDataManagerInputProtocol: class {
    var dataManagerOutput: PlaylistDetailsDataManagerOutputProtocol? { get set }
    func fetchVideos(forPlaylist: Playlist)
}

protocol PlaylistDetailsDataManagerOutputProtocol: class {
    func onVideosFetched(videos: [Video])
    func onError()
}

// MARK: - Interactor Protocols

protocol PlaylistDetailsInteractorInputProtocol: class {
    var interactorOutput: PlaylistDetailsInteractorOutputProtocol? { get set }
    func fetchVideos()
}

protocol PlaylistDetailsInteractorOutputProtocol: class {
    func videosFetched(videos: [Video])
    func onError()
}

// MARK: - Presenter Protocols

protocol PlaylistDetailsPresenterProtocol: class {
    //var view
    var interactor: PlaylistDetailsInteractorOutputProtocol? { get set }
    // var router
    
    func viewDidLoad()
    func showDetailsForVideo(_ video: Video)
}

// MARK: - View Protocols

protocol PlaylistDetailsViewProtocol: class {
    var presenter: PlaylistDetailsPresenterProtocol? { get set }
    func showVideos(_ videos: [Video])
    func showError()
    func showLoading()
    func hideLoading()
}

// MARK: - Router Protocols
