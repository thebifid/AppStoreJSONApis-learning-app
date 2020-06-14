//
//  AppsPageHeader.swift
//  AppStoreJSONApis
//
//  Created by Vasiliy Matveev on 14.06.2020.
//  Copyright © 2020 Vasiliy Matveev. All rights reserved.
//

import UIKit

class AppsPageHeader: UICollectionReusableView {
    
    let appHeaderHorizontalController = AppsHeaderHorizontalController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        

        addSubview(appHeaderHorizontalController.view)
        appHeaderHorizontalController.view.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
