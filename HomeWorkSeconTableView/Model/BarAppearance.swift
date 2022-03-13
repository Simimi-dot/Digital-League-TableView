//
//  BarAppearance.swift
//  HomeWorkSeconTableView
//
//  Created by Егор Астахов on 12.03.2022.
//

import UIKit

struct NavigationBarAppearance {
    func barAppearance() -> UINavigationBarAppearance {
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        navigationBarAppearance.backgroundColor = .black
        navigationBarAppearance.shadowColor = .clear
        navigationBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 70, weight: .bold)]
        return navigationBarAppearance
    }
}
