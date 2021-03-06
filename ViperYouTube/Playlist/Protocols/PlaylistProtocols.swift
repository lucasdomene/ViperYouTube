//
//  PlaylistProtocols.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import UIKit

// MARK: - Data Manager protocols

protocol PlaylistDataManagerInputProtocol: class {
    var outputRequestHandler: PlaylistDataManagerOutputProtocol? { get set }
    func fetchPlaylists(forChannel channelID: String)
}

protocol PlaylistDataManagerOutputProtocol: class {
    func onPlaylistsFetched(playlists: [Playlist])
    func onError()
}

// MARK: - Interactor protocols

protocol PlaylistInteractorInputProtocol: class {
    var presenter: PlaylistInteractorOutputProtocol? { get set }
    var dataManager: PlaylistDataManagerInputProtocol? { get set }
    func fetchPlaylists()
}

protocol PlaylistInteractorOutputProtocol: class {
    func playlistsFetched(playlists: [Playlist])
    func onError()
}

// MARK: - presenter protocols

protocol PlaylistPresenterProtocol: class {
    var view: PlaylistViewProtocol? { get set }
    var interactor: PlaylistInteractorInputProtocol? { get set }
    var router: PlaylistWireframeProtocol? { get set }
    
    func viewDidLoad()
    func showDetailsForPlaylist(_ playlist: Playlist)
}

// MARK: - View protocols

protocol PlaylistViewProtocol: class {
    var presenter: PlaylistPresenterProtocol? { get set }
    func showPlaylists(_ playlists: [Playlist])
    func showError()
    func showLoading()
    func hideLoading()
}

// MARK: - Router protocols

protocol PlaylistWireframeProtocol: class {
    static func createPlaylistViewController() -> UIViewController
    func presentDetailsForPlaylist(fromView view: PlaylistViewProtocol, playlist: Playlist)
}


