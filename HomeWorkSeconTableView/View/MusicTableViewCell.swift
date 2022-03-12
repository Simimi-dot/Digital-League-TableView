//
//  MusicTableViewCell.swift
//  HomeWorkSeconTableView
//
//  Created by Егор Астахов on 12.03.2022.
//

import UIKit

//MARK: - Class
class MusicTableViewCell: UITableViewCell {
    
    //MARK: - Properties
    lazy var musicView: UIView = {
       var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 15
        view.backgroundColor = .lightGray
        
        view.layer.shadowColor = UIColor.systemPink.cgColor
        view.layer.shadowOpacity = 0.6
        view.layer.shadowRadius = 5
        view.layer.shadowOffset = CGSize(width: 0, height: 7)
        view.layer.masksToBounds = false
        
        return view
    }()
    
    lazy var gradientLayer: CAGradientLayer = {
        var gradient = CAGradientLayer()
        gradient.colors = [UIColor.blue.cgColor, UIColor.systemPink.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.cornerRadius = 15
        gradient.frame = CGRect(x: 0, y: 0, width: 350, height: 200)
        return gradient
    }()
    
    
    lazy var musicImageView: UIImageView = {
       var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .black
        image.layer.borderWidth = 2
        image.layer.borderColor = UIColor.white.cgColor
        return image
    }()
    
    lazy var musicLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 35)
        label.numberOfLines = 1
        return label
    }()
    
    lazy var musicRatingLabel: UILabel = {
        var rating = UILabel()
        rating.translatesAutoresizingMaskIntoConstraints = false
//        rating.text = "Music Rating"
        rating.textColor = .white
        return rating
    }()
    
    lazy var musicButton: UIButton = {
       var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .clear
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Check this album", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.layer.cornerRadius = 5
        return button
    }()
    
    //MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
