//
//  SearchResult.swift
//  AppStoreJSONApis
//
//  Created by Vasiliy Matveev on 12.06.2020.
//  Copyright © 2020 Vasiliy Matveev. All rights reserved.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Decodable {
    let trackId: Int
    let trackName: String
    let primaryGenreName: String
    var averageUserRating: Float?
    let screenshotUrls: [String]
    let artworkUrl100: String // app icon
    let formattedPrice: String
    let description: String
    let releaseNotes: String
}
