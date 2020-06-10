//
//  SearchResultCell.swift
//  AppStoreJSONApis
//
//  Created by Vasiliy Matveev on 10.06.2020.
//  Copyright © 2020 Vasiliy Matveev. All rights reserved.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .green
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
