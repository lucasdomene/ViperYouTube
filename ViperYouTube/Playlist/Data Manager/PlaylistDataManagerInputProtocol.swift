//
//  PlaylistDataManagerInputProtocol.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 16/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation

protocol PlaylistDataManagerInputProtocol: class {
    var outputRequestHandler: PlaylistDataManagerOutputProtocol? { get set }
    func fetchPlaylists()
}
