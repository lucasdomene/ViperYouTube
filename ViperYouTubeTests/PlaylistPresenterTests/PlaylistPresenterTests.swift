//
//  PlaylistPresenterTests.swift
//  ViperYouTubeTests
//
//  Created by Lucas Domene Firmo on 18/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import XCTest
@testable import ViperYouTube

class PlaylistPresenterTests: XCTestCase {
    
    var fakeInteractor = FakePlaylistInteractor()
    var fakePresenter = FakePlaylistPresenter()
    
    override func setUp() {
        super.setUp()
        
        fakeInteractor.presenter = fakePresenter
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPresenterWhenFetchingPlaylists() {
        fakeInteractor.onPlaylistsFetched(playlists: [])
        XCTAssertTrue(fakePresenter.playlistsFetched)
    }
    
    func testPresenterWhenReceivingAnError() {
        fakeInteractor.onError()
        XCTAssertTrue(fakePresenter.errorReturned)
    }
    
}
