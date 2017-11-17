//
//  PlaylistViewController.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 15/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import UIKit

class PlaylistViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var presenter: PlaylistPresenterProtocol?
    var playlists: [Playlist] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }

}

extension PlaylistViewController: PlaylistViewProtocol {
    func showPlaylists(_ playlists: [Playlist]) {
        self.playlists = playlists
        tableView.reloadData()
    }
}

extension PlaylistViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playlists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaylistCell", for: indexPath) as! UITableViewCell
        let playlist = playlists[indexPath.row]
        // configure cell
        return cell
    }
    
}
