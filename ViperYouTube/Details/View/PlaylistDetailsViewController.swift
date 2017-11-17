//
//  PlaylistDetailsViewController.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import UIKit
import PKHUD

class PlaylistDetailsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var presenter: PlaylistDetailsPresenterProtocol?
    var videos: [Video] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        tableView.tableFooterView = UIView()
    }
    
}

extension PlaylistDetailsViewController: PlaylistDetailsViewProtocol {
    
    func showVideos(_ videos: [Video]) {
        self.videos = videos
        tableView.reloadData()
    }
    
    func showError() {
        HUD.flash(.label("Ops, an error ocurred!"), delay: 2.0)
    }
    
    func showLoading() {
        HUD.show(.progress)
    }
    
    func hideLoading() {
        HUD.hide()
    }
    
}

extension PlaylistDetailsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! UITableViewCell
        let video = videos[indexPath.row]
        //confifure cell
        return cell
    }
    
}
