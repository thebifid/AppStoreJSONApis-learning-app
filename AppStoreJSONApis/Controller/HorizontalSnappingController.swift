//
//  HorizontalSnappingController.swift
//  AppStoreJSONApis
//
//  Created by Vasiliy Matveev on 19.06.2020.
//  Copyright © 2020 Vasiliy Matveev. All rights reserved.
//

import UIKit

class HorizontalSnappingController: UICollectionViewController {
    
    init() {
        let layout = BetterSappingLayout()
        layout.scrollDirection = .horizontal
        super.init(collectionViewLayout: layout)
        collectionView.decelerationRate = .fast
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


