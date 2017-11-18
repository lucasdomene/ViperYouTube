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
    
    var presenter: VideoPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
}

extension VideoDetailsViewController: VideoViewProtocol {
    
    func showVideoDetails(_ video: Video) {
        // configure view
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
