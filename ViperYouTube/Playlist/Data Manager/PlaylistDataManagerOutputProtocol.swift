//
//  PlaylistDataManagerOutputProtocol.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 16/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Foundation

protocol PlaylistDataManagerOutputProtocol: class {
    func onPlaylistsFetched(playlists: [Playlist])
    func onError()
}
