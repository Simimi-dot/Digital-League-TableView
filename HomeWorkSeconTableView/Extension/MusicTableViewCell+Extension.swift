//
//  MusicTableViewCell+Extension.swift
//  HomeWorkSeconTableView
//
//  Created by Егор Астахов on 12.03.2022.
//

import UIKit

//MARK: - Extension

// MusicTableViewCell
extension MusicTableViewCell {
    func configureCell() {
        
        contentView.backgroundColor = .black
        
        contentView.addSubview(musicView)
        musicView.layer.addSublayer(gradientLayer)
        musicView.addSubview(musicImageView)
        musicView.addSubview(musicLabel)
        musicView.addSubview(musicRatingLabel)
        musicView.addSubview(musicButton)
        
        NSLayoutConstraint.activate([
            musicView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            musicView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            musicView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            musicView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            
            musicImageView.topAnchor.constraint(equalTo: musicView.topAnchor, constant: 20),
            musicImageView.leadingAnchor.constraint(equalTo: musicView.leadingAnchor, constant: 20),
            musicImageView.widthAnchor.constraint(equalToConstant: 100),
            musicImageView.heightAnchor.constraint(equalToConstant: 100),
            
            musicLabel.topAnchor.constraint(equalTo: musicImageView.topAnchor),
            musicLabel.leadingAnchor.constraint(equalTo: musicImageView.trailingAnchor, constant: 20),
            musicLabel.trailingAnchor.constraint(greaterThanOrEqualTo: musicView.trailingAnchor, constant: -20),
            
            musicRatingLabel.leadingAnchor.constraint(equalTo: musicImageView.trailingAnchor, constant: 20),
            musicRatingLabel.trailingAnchor.constraint(equalTo: musicView.trailingAnchor, constant: -20),
            musicRatingLabel.bottomAnchor.constraint(equalTo: musicImageView.bottomAnchor),
            
            
            musicButton.topAnchor.constraint(equalTo: musicRatingLabel.bottomAnchor),
            musicButton.trailingAnchor.constraint(equalTo: musicView.trailingAnchor, constant: -20),
            musicButton.bottomAnchor.constraint(equalTo: musicView.bottomAnchor, constant: -20)
        ])
    }
    
}
