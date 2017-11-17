//
//  AppDelegate.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 15/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let playlistView = PlaylistWireframe.createPlaylistViewController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = playlistView
        window?.makeKeyAndVisible()
        
        return true
    }

}

