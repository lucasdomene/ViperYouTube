//
//  PlaylistInteractorInputProtocol.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 16/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation

protocol PlaylistInteractorInputProtocol: class {
    var presenter: PlaylistInteractorOutputProtocol? { get set }
    var dataManager: PlaylistDataManagerInputProtocol? { get set }
    func fetchPlaylists()
}
