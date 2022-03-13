//
//  MusicAlbumsViewController.swift
//  HomeWorkSeconTableView
//
//  Created by Егор Астахов on 12.03.2022.
//

import UIKit

//MARK: - Class
class MusicAlbumsViewController: UIViewController {
    
    //MARK: - Properties
    let musicCellId = "musicCellId"
    let musicHeaderFooterId = "headerFooterId"
    
    let navigationBar = NavigationBarAppearance()
    
    
    var allGanreArray = [
        ExpandableMusicGanre(
            isExpanded: true,
            musicians: ["Queen", "AC/DC", "Deep Purple", "Pink Floyd"],
            ganre:"Rock",
            ganreImgae: UIImage(named: "Rock"),
            musiciansImage: [UIImage(named: "Queen"), UIImage(named: "ACDC"), UIImage(named: "DeepPurple"), UIImage(named: "Pink Floyd")] ),
        
        ExpandableMusicGanre(
            isExpanded: true,
            musicians: ["Jay-Z", "Eminem", "Snoop Dog", "Dr. Dre"],
            ganre: "Hip-Hop",
            ganreImgae: UIImage(named: "Hip-Hop"),
            musiciansImage: [UIImage(named: "Jay-z"), UIImage(named: "Eminem"), UIImage(named: "Snoop dog"), UIImage(named: "Dr. Dre")] ),
        
        ExpandableMusicGanre(
            isExpanded: true,
            musicians: ["Pompeya", "Icona Pop", "Allie X", "Katy Perry"],
            ganre: "Pop",
            ganreImgae: UIImage(named: "Pop"),
            musiciansImage: [UIImage(named: "Pompeya"), UIImage(named: "Icona pop"), UIImage(named: "Allie X"), UIImage(named: "Katy Perry")] ),
        
        ExpandableMusicGanre(
            isExpanded: true,
            musicians: ["Daft Punk", "David Guetta", "deadmau5"],
            ganre: "House",
            ganreImgae: UIImage(named: "House"),
            musiciansImage: [UIImage(named: "Daft Punk"), UIImage(named: "David Guetta"), UIImage(named: "deadmau5")] )
    ]
    
    lazy var musicTableView: UITableView = {
        var musicTable = UITableView()
        musicTable.translatesAutoresizingMaskIntoConstraints = false
        musicTable.separatorColor = .clear
        musicTable.delegate = self
        musicTable.dataSource = self
        musicTable.rowHeight = UITableView.automaticDimension
        musicTable.sectionHeaderTopPadding = 20
        musicTable.backgroundColor = .clear
        
        musicTable.register(MusicTableViewCell.self, forCellReuseIdentifier: musicCellId)
        musicTable.register(HeaderSectionView.self, forHeaderFooterViewReuseIdentifier: musicHeaderFooterId)
        return musicTable
    }()
    
    //    lazy var gradientLayer: CAGradientLayer = {
    //        var gradient = CAGradientLayer()
    //        gradient.colors = [UIColor.blue.cgColor, UIColor.systemPink.cgColor]
    //        gradient.startPoint = CGPoint(x: 0, y: 0)
    //        gradient.endPoint = CGPoint(x: 1, y: 1)
    //        gradient.cornerRadius = 15
    //        gradient.frame = CGRect(x: 0, y: 0, width: 370, height: 100)
    //        return gradient
    //    }()
    
    lazy var gradientLayer: CAGradientLayer = {
        var gradient = CAGradientLayer()
        gradient.colors = [UIColor.blue.cgColor, UIColor.systemPink.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.cornerRadius = 15
        gradient.frame = self.view.bounds
        return gradient
    }()
    
    //MARK: - Life Cycle
    
    override func loadView() {
        super.loadView()
        navigationItem.largeTitleDisplayMode = .automatic
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Music"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        configureTableView()
        navigationBarConfigure()
        
    }
    
    //MARK: - Methods
    private func navigationBarConfigure() {
        navigationController?.navigationBar.standardAppearance = navigationBar.barAppearance()
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBar.barAppearance()
        navigationController?.navigationBar.compactAppearance = navigationBar.barAppearance()
    }
    
}



