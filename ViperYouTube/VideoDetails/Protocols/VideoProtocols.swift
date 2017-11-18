//
//  VideoProtocols.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import UIKit

protocol VideoViewProtocol: class {
    var presenter: VideoPresenterProtocol? { get set }
    func showVideoDetails(_ video: Video)
}

protocol VideoWireFrameProtocol: class {
    static func createVideoDetailsViewController(forVideo video: Video) -> UIViewController
}

protocol VideoPresenterProtocol: class {
    var view: VideoViewProtocol? { get set }
    var wireFrame: VideoWireFrameProtocol? { get set }
    var video: Video? { get set }
    
    func viewDidLoad()
}
