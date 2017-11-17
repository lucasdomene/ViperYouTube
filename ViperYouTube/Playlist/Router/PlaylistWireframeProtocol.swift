//
//  PlaylistWireframeProtocol.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 16/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import UIKit

protocol PlaylistWireframeProtocol: class {
    static func createPlaylistViewController() -> UIViewController
    func presentDetailsForPlaylist(fromView view: PlaylistViewProtocol, playlist: Playlist) 
}
