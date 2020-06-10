//
//  AppsSearchController.swift
//  AppStoreJSONApis
//
//  Created by Vasiliy Matveev on 10.06.2020.
//  Copyright © 2020 Vasiliy Matveev. All rights reserved.
//

import UIKit


class AppsSearchController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .blue
    }

    init(){
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
