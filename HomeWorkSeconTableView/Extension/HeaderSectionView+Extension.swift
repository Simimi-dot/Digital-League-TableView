//
//  HeaderSectionView+Extension.swift
//  HomeWorkSeconTableView
//
//  Created by Егор Астахов on 12.03.2022.
//

import UIKit

//MARK: - Extension

// HeaderSectionView
extension HeaderSectionView: ConfigureViewProtocol {
    func configureView() {
        
        
        addSubview(headerView)
        headerView.layer.addSublayer(gradientLayer)
        headerView.addSubview(headerImage)
        headerView.addSubview(headerTitle)
        headerView.addSubview(headerButton)
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            headerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            headerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            headerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            headerImage.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 20),
            headerImage.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 20),
            headerImage.widthAnchor.constraint(equalToConstant: 50),
            headerImage.heightAnchor.constraint(equalToConstant: 50),
            
            headerTitle.leadingAnchor.constraint(equalTo: headerImage.trailingAnchor, constant: 20),
            headerTitle.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -20),
            headerTitle.bottomAnchor.constraint(equalTo: headerImage.bottomAnchor),
            
            headerButton.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -20),
            headerButton.bottomAnchor.constraint(equalTo: headerImage.bottomAnchor)
        ])
    }
}

// configureBackgroundHeaderColor
extension HeaderSectionView {
    func configureBackgroundHeaderColor() {
        let headerBackgroundView = UIView(frame: self.bounds)
        headerBackgroundView.backgroundColor = UIColor(white: 1, alpha: 0.0)
        self.backgroundView = headerBackgroundView
    }
}
