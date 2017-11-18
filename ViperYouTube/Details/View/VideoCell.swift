//
//  VideoCell.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import UIKit
import AlamofireImage

class VideoCell: UITableViewCell {
    
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func set(forVideo video: Video) {
        titleLabel?.text = video.title
        let url = URL(string: video.thumbnail)!
        let placeholderImage = #imageLiteral(resourceName: "placeholder.png")
        videoImageView?.af_setImage(withURL: url, placeholderImage: placeholderImage)
    }
}
