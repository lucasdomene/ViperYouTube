//
//  ViewController.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 15/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let playlistDataManager = PlaylistDataManager()
        playlistDataManager.fetchPlaylists(forChannel: "UCE_M8A5yxnLfW0KghEeajjw")
    }

}

