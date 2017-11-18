//
//  VideoDetailsViewController.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import UIKit
import PKHUD

class VideoDetailsViewController: UIViewController {
    
    // MARK: - Attributes
    
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var presenter: VideoPresenterProtocol?
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        title = "Details"
    }
    
}

extension VideoDetailsViewController: VideoViewProtocol {
    
    func showVideoDetails(_ video: Video) {
        titleLabel?.text = video.title
        let url = URL(string: video.thumbnail)!
        let placeholderImage = #imageLiteral(resourceName: "placeholder.png")
        videoImageView?.af_setImage(withURL: url, placeholderImage: placeholderImage)
    }
    
    func showError() {
         HUD.flash(.label("Ops, an error occurred"), delay: 2.0)
    }
    
    func showLoading() {
        HUD.show(.progress)
    }
    
    func hideLoading() {
        HUD.hide()
    }
    
}
