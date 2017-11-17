//
//  PlaylistCell.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 16/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import UIKit
import AlamofireImage

class PlaylistCell: UITableViewCell {
    
    @IBOutlet weak var playlistImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func set(forPlaylist playlist: Playlist) {
        titleLabel?.text = playlist.title
        let url = URL(string: playlist.thumbnail)!
        let placeholderImage = UIImage(named: "placeholder")!
        playlistImageView?.af_setImage(withURL: url, placeholderImage: placeholderImage)
    }
}
