//
//  PlaylistInteractorTests.swift
//  ViperYouTubeTests
//
//  Created by Lucas Domene Firmo on 18/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import XCTest
@testable import ViperYouTube

class PlaylistInteractorTests: XCTestCase {
    
    var interactor = PlaylistInteractor()
    var playlistDataManager = FakePlaylistDataManager()
    var playlistOutput = FakePlaylistOutputDataManager()
    
    override func setUp() {
        super.setUp()
        
        interactor.dataManager = playlistDataManager
        playlistDataManager.outputRequestHandler = playlistOutput
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPlaylistsFetched() {
        playlistDataManager.shouldFail = false
        interactor.fetchPlaylists()
        XCTAssertTrue(playlistOutput.playlistsFetched)
    }
    
    func testErrorReturned() {
        playlistDataManager.shouldFail = true
        interactor.fetchPlaylists()
        XCTAssertTrue(playlistOutput.errorReturned)
    }
    
}
