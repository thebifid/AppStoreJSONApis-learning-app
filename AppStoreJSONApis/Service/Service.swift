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
    
    func fetchApps(searchTerm: String, completion: @escaping ([Result], Error?) -> ()) {
        let urlString = "https://itunes.apple.com/search?term=\(searchTerm)&entity=software"
        guard let url = URL(string: urlString) else { return }
        
        //fetch data from internet
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            
            if let err = err {
                print("Failed to fetch apps:", err)
                completion([], nil)
                return
            }
            
            // success
            
            guard let data = data else { return }
            
            do {
                let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)
                completion(searchResult.results, nil)
                
            } catch let err {
                print("Failed to decode json:", err)
                completion([], err)
            }
            
            
        }.resume()
    }
    
    func fetchGames(completion: @escaping (AppGroup?, Error?) -> ()) {
        guard let url = URL(string: "https://rss.itunes.apple.com/api/v1/ru/ios-apps/top-free/all/50/explicit.json") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in

            if let err = err {
                completion(nil, err)
                return
            }
            
            do {
                let appGroup = try JSONDecoder().decode(AppGroup.self, from: data!)
                // success
                appGroup.feed.results.forEach {  print($0.name)
                    completion(appGroup, nil)
                }
            } catch {
                completion(nil, error)
            }
 
        }.resume()
    }
    
    
}
