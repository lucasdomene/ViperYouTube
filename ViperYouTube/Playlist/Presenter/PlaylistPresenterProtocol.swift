//
//  PlaylistPresenterProtocol.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 16/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation

protocol PlaylistPresenterProtocol: class {
    var view: PlaylistViewProtocol? { get set }
    var interactor: PlaylistInteractorInputProtocol? { get set }
    var router: PlaylistWireframeProtocol? { get set }
    
    func viewDidLoad()
    func showDetailsForPlaylist(_ playlist: Playlist)
}
