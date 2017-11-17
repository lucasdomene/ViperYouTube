//
//  PlaylistWireframe.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 16/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import UIKit

class PlaylistWireframe: PlaylistWireframeProtocol {
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    class func createPlaylistViewController() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "PlaylistNavigationController")
        if let view = navController.childViewControllers.first as? PlaylistViewController {
            let presenter: PlaylistPresenterProtocol & PlaylistInteractorOutputProtocol = PlaylistPresenter()
            let interactor: PlaylistInteractorInputProtocol & PlaylistDataManagerOutputProtocol = PlaylistInteractor()
            let dataManager: PlaylistDataManagerInputProtocol = PlaylistDataManager()
            let wireFrame: PlaylistWireframeProtocol = PlaylistWireframe()
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = wireFrame
            presenter.interactor = interactor
            interactor.presenter = presenter
            interactor.dataManager = dataManager
            dataManager.outputRequestHandler = interactor
            
            return navController
        }
        return UIViewController()
    }
    
    func presentDetailsForPlaylist(_ playlist: Playlist) {
        
    }
    
}

