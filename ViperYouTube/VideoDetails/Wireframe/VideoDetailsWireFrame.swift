//
//  VideoDetailsWireFrame.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 18/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import UIKit

class VideoDetailsWireFrame: VideoWireFrameProtocol {
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    static func createVideoDetailsViewController(forVideo video: Video) -> UIViewController {
        
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "VideoDetailsViewController")
        if let view = viewController as? VideoDetailsViewController {
            let interactor: VideoInteractorInputProtocol & VideoDataManagerOutputProtocol = VideoInteractor()
            let dataManager: VideoDataManagerInputProtocol = VideoDetailsDataManager()
            let presenter: VideoPresenterProtocol & VideoInteractorOutputProtocol = VideoPresenter()
            let wireframe: VideoWireFrameProtocol = VideoDetailsWireFrame()
            
            view.presenter = presenter
            presenter.interactor = interactor
            presenter.view = view
            presenter.video = video
            presenter.router = wireframe
            interactor.dataManager = dataManager
            interactor.interactorOutput = presenter
            dataManager.dataManagerOutPut = interactor
            
            return viewController
        }
        
        return UIViewController()
    }
    
}
