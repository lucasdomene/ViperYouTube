//
//  PlaylistTests.swift
//  ViperYouTubeTests
//
//  Created by Lucas Domene Firmo on 18/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import XCTest
@testable import ViperYouTube

class PlaylistTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPlaylistCreation() {
        let playlist = Playlist(id: "playlistID", title: "playlistTitle", thumbnail: "thumbnailTitle")
        XCTAssertEqual(playlist.id, "playlistID")
        XCTAssertEqual(playlist.title, "playlistTitle")
        XCTAssertEqual(playlist.thumbnail, "thumbnailTitle")
    }
    
}
