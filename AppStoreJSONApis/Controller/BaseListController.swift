//
//  BaseListController.swift
//  AppStoreJSONApis
//
//  Created by Vasiliy Matveev on 14.06.2020.
//  Copyright © 2020 Vasiliy Matveev. All rights reserved.
//

import UIKit

class BaseListController: UICollectionViewController {
    
    init(){
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
