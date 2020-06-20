//
//  AppGroup.swift
//  AppStoreJSONApis
//
//  Created by Vasiliy Matveev on 19.06.2020.
//  Copyright © 2020 Vasiliy Matveev. All rights reserved.
//

import Foundation


struct AppGroup: Decodable {
    
    let feed: Feed
    
}

struct Feed: Decodable {
    let title: String
    let results: [FeedResult]
}

struct FeedResult: Decodable {
    let id, name, artistName, artworkUrl100: String
}
