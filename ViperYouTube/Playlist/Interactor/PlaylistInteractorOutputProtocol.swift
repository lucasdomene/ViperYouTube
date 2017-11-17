//
//  PlaylistInteractorOutputProtocol.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 16/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation

protocol PlaylistInteractorOutputProtocol: class {
    func playlistsFetched(playlists: [Playlist])
    func onError()
}
