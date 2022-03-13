//
//  HeaderSectionView.swift
//  HomeWorkSeconTableView
//
//  Created by Егор Астахов on 12.03.2022.
//

import UIKit

//MARK: - Class
class HeaderSectionView: UITableViewHeaderFooterView {
    //MARK: - Properties
    lazy var headerView: UIView = {
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
        gradient.frame = CGRect(x: 0, y: 0, width: 370, height: 100)
        return gradient
    }()
    
    lazy var headerImage: UIImageView = {
       var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .black
        image.layer.borderWidth = 2
        image.layer.borderColor = UIColor.white.cgColor
        return image
    }()
    
    lazy var headerTitle: UILabel = {
       var title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .white
        title.numberOfLines = 1
        title.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return title
    }()
    
    lazy var headerButton: UIButton = {
       var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("-", for: .normal)
        button.setTitleColor(.white, for: .normal)
//        button.backgroundColor = .systemBlue
        button.backgroundColor = .clear
        button.layer.cornerRadius = 5
        return button
    }()
    
    //MARK: - Init
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configureHeader()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
