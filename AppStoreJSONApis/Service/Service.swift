//
//  Service.swift
//  AppStoreJSONApis
//
//  Created by Vasiliy Matveev on 13.06.2020.
//  Copyright © 2020 Vasiliy Matveev. All rights reserved.
//

import Foundation

class Service {
    
    static let shared = Service() // singleton
    
    func fetchApps(searchTerm: String, completion: @escaping (SearchResult?, Error?) -> ()) {
        let urlString = "https://itunes.apple.com/search?term=\(searchTerm)&entity=software"
        
        fetchGenericJSONData(urlString: urlString, completion: completion)
    }
    
    func fetchTopFreeApps(completion: @escaping (AppGroup?, Error?) -> ()) {
        let urlString = "https://rss.itunes.apple.com/api/v1/ru/ios-apps/top-free/all/25/explicit.json"
        fetchAppGroup(urlString: urlString, completion: completion)
    }
    

    func fetchTopPaidApps(completion: @escaping (AppGroup?, Error?) -> ()) {
          let urlString = "https://rss.itunes.apple.com/api/v1/ru/ios-apps/top-paid/all/25/explicit.json"
          fetchAppGroup(urlString: urlString, completion: completion)
      }
    
    
    func fetchTopGrossingApps(completion: @escaping (AppGroup?, Error?) -> ()) {
        let urlString = "https://rss.itunes.apple.com/api/v1/ru/ios-apps/top-grossing/all/25/explicit.json"
        fetchAppGroup(urlString: urlString, completion: completion)
    }

    
    //helper
    func fetchAppGroup(urlString: String, completion: @escaping (AppGroup?, Error?) -> () ){
        fetchGenericJSONData(urlString: urlString, completion: completion)
    }
    
    
    
    func fetchSocialApps(completion: @escaping ([SocialApp]?, Error?) -> () ) {
        let urlString = "https://api.letsbuildthatapp.com/appstore/social"
        fetchGenericJSONData(urlString: urlString, completion: completion)
    }
    
    
    // declare generic json fucntion here
    
    func fetchGenericJSONData<T: Decodable>(urlString: String, completion: @escaping (T?, Error?) -> () ) {
               guard let url = URL(string: urlString) else { return }
               URLSession.shared.dataTask(with: url) { (data, response, err) in
                                 if let err = err {
                                     completion(nil, err)
                                     return
                                 }
                                 do {
                                     let objects = try JSONDecoder().decode(T.self, from: data!)
                                     // success
                                     completion(objects, nil)
                                 } catch {
                                     completion(nil, error)
                                 }
                             }.resume()
    }
    
}
