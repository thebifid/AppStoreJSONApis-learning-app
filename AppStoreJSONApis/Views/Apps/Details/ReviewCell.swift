//
//  ReviewCell.swift
//  AppStoreJSONApis
//
//  Created by Vasiliy Matveev on 21.06.2020.
//  Copyright © 2020 Vasiliy Matveev. All rights reserved.
//

import UIKit

class ReviewCell: UICollectionViewCell {
    
    let titleLabel = UILabel(text: "Review title", font: .boldSystemFont(ofSize: 18))
    
    let authorLabel = UILabel(text: "Author", font: .systemFont(ofSize: 16))
    
    let starsLabel = UILabel(text: "Stars", font: .systemFont(ofSize: 14))
    
    let bodyLabel = UILabel(text: "Review body\nReview body\nReview body\nReview body\n", font: .systemFont(ofSize: 16), numberOfLines: 0)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = #colorLiteral(red: 0.9384371638, green: 0.9325731397, blue: 0.9675752521, alpha: 1)
        layer.cornerRadius = 16
        
        clipsToBounds = true
        
        let stackView = VerticalStackVIew(arrangedSubviews: [
            UIStackView(arrangedSubviews: [
                titleLabel,
                authorLabel,
            ], customSpacing: 8),
            starsLabel,
            bodyLabel,
            UIView()
    ], spacing: 12)
        titleLabel.setContentHuggingPriority(.init(0), for: .horizontal)
        
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
