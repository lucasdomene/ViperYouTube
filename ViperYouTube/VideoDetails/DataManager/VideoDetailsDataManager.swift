//
//  VideoDetailsDataManager.swift
//  ViperYouTube
//
//  Created by Lucas Domene Firmo on 17/11/17.
//  Copyright © 2017 Luca Domene Firmo. All rights reserved.
//

import Alamofire

class VideoDetailsDataManager: VideoDataManagerInputProtocol {
    
    var dataManagerOutPut: VideoDataManagerOutputProtocol?
    
    func fetchVideoDetails(forVideo video: Video) {
        Alamofire.request(Endpoints.VideoDetails.fetch(part: "snippet", videoID: video.id).url, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let json):
                guard let json = json as? [String: Any], let video = json["items"] as?  [[String: Any]] else {
                    self.dataManagerOutPut?.onError()
                    return
                }
                
                let videoObject = video.map { return Video(JSON: $0)! }.first
                self.dataManagerOutPut?.onVideoDetailsFetched(video: videoObject!)
            case .failure:
                self.dataManagerOutPut?.onError()
            }
        }
    }
    
}
