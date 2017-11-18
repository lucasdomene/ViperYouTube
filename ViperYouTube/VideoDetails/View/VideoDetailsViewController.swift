//
//  VideoDetailsViewController.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import UIKit

class VideoDetailsViewController: UIViewController {
    
    var presenter: VideoPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
}

extension VideoDetailsViewController: VideoViewProtocol {
    
    func showVideoDetails(_ video: Video) {
        
    }
    
}
