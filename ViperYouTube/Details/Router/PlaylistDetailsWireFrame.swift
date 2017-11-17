//
//  PlaylistDetailsWireFrame.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import UIKit

class PlaylistDetailsWireFrame: PlaylistDetailsWireFrameProtocol {
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    static func createPlaylistDetailsViewController(forPlaylist playlist: Playlist) -> UIViewController {
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "PlaylistDetailsController")
        if let view = viewController as? PlaylistDetailsViewController {
            let interactor: PlaylistDetailsInteractorInputProtocol & PlaylistDetailsDataManagerOutputProtocol = PlaylistDetailsInteractor()
            let dataManager: PlaylistDetailsDataManagerInputProtocol = PlaylistDetailsDataManager()
            let presenter: PlaylistDetailsPresenterProtocol & PlaylistDetailsInteractorOutputProtocol = PlaylistDetailsPresenter()
            let wireFrame: PlaylistDetailsWireFrameProtocol = PlaylistDetailsWireFrame()
            
            view.presenter = presenter
            presenter.interactor = interactor
            presenter.view = view
            presenter.playlist = playlist
            presenter.router = wireFrame
            interactor.dataManager = dataManager
            
            return viewController
        }
        return UIViewController()
    }
    
    func presentDetailsForVideo(_ video: Video) {
        
    }
    
}
