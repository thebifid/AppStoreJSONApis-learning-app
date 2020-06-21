//
//  Reviews.swift
//  AppStoreJSONApis
//
//  Created by Vasiliy Matveev on 21.06.2020.
//  Copyright © 2020 Vasiliy Matveev. All rights reserved.
//

import Foundation


struct Reviews: Decodable {
    let feed: ReviewFeed
}


struct ReviewFeed: Decodable {
    let entry: [Entry]
}

struct Entry: Decodable {
    let author: Author
    let title: Label
    let content: Label
}

struct Author: Decodable {
    let name: Label
}

struct Label: Decodable {
    let label: String
}

