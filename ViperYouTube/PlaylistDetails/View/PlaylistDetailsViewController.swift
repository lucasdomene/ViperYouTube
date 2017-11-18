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
    
    // MARK: - Attributes
    
    @IBOutlet weak var tableView: UITableView!
    var presenter: PlaylistDetailsPresenterProtocol?
    var videos: [Video] = []

    // MARK: - Life Cycle
    
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
        title = "Videos"
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
    
    // MARK: - Data Source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! VideoCell
        let video = videos[indexPath.row]
        cell.set(forVideo: video)
        return cell
    }
    
    // MARK: - Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.showDetailsForVideo(videos[indexPath.row])
    }
    
}
