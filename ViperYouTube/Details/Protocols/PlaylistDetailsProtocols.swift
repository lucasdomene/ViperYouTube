//
//  PlaylistDetailsProtocols.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

protocol DetailsDataManagerInputProtocol: class {
    var dataManagerOutput: DetailsDataManagerOutputProtocol? { get set }
    func fetchVideos(forPlaylist: Playlist)
}

protocol DetailsDataManagerOutputProtocol: class {
    func onVideosFetched(videos: [Video])
    func onError()
}
