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
    
    // MARK: - Outlets
    
    @IBOutlet weak var playlistImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    // MARK: - Configuration
    
    func set(forPlaylist playlist: Playlist) {
        titleLabel?.text = playlist.title
        let url = URL(string: playlist.thumbnail)!
        let placeholderImage = #imageLiteral(resourceName: "placeholder.png")
        playlistImageView?.af_setImage(withURL: url, placeholderImage: placeholderImage)
    }
}
