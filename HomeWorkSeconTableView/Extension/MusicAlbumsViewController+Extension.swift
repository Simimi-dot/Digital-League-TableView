//
//  MusicAlbumsViewController+Extension.swift
//  HomeWorkSeconTableView
//
//  Created by Егор Астахов on 12.03.2022.
//

import UIKit

//MARK: - Extension

// ConfigureViewProtocol
extension MusicAlbumsViewController: ConfigureViewProtocol {
    func configureView() {
        view.backgroundColor = .white
        
        view.layer.addSublayer(gradientLayer)
        view.addSubview(musicTableView)
        
        NSLayoutConstraint.activate([
            musicTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            musicTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            musicTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            musicTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}


// UITableViewDelegate, UITableViewDataSource
extension MusicAlbumsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = .clear
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerSectionView = HeaderSectionView()
        headerSectionView.headerButton.addTarget(self, action: #selector(hideAndOpen), for: .touchUpInside)
        headerSectionView.headerButton.tag = section
        
        let musicGanre = allGanreArray[section].ganre
        headerSectionView.headerTitle.text = musicGanre
        
        let musicGanreImage = allGanreArray[section].ganreImgae
        headerSectionView.headerImage.image = musicGanreImage
        
        return headerSectionView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return allGanreArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if !allGanreArray[section].isExpanded {
            return 0
        }
        return allGanreArray[section].musicians.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: musicCellId, for: indexPath) as? MusicTableViewCell else { return UITableViewCell()}

        let musicians = allGanreArray[indexPath.section].musicians[indexPath.row]
        let musiciansImage = allGanreArray[indexPath.section].musiciansImage[indexPath.row]
        
        cell.musicLabel.text = musicians
        cell.musicImageView.image = musiciansImage
        
        if indexPath.row % 2 == 0 {
            cell.musicRatingLabel.text = "Rating: 5"
        } else {
            cell.musicRatingLabel.text = "Rating: 4"
        }
        
        return cell
    }
    
}

// @objc
extension MusicAlbumsViewController {
    @objc
    func hideAndOpen(button: UIButton) {
        let section = button.tag
        
        var indexPaths = [IndexPath]()
        
        for row in allGanreArray[section].musicians.indices {
            let indexPath = IndexPath(row: row, section: section)
            indexPaths.append(indexPath)
        }
        
        let isExpanded = allGanreArray[section].isExpanded
        allGanreArray[section].isExpanded = !isExpanded
        
        button.setTitle(isExpanded ? "+" : "-", for: .normal)
        
        if isExpanded {
            musicTableView.deleteRows(at: indexPaths, with: .left)
        } else {
            musicTableView.insertRows(at: indexPaths, with: .left)
        }
        
//        musicTableView.reloadData()
    }
}


