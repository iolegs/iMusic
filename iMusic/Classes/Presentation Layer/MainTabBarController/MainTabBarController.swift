//
//  MainTabBarController.swift
//  iMusic
//
//  Created by Oleg Sukhotskiy on 02.05.2020.
//  Copyright © 2020 Oleg Sukhotskyi. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private lazy var searchViewController: UINavigationController = {
        let searchViewController = SearchTemporaryViewController()
        let nc = UINavigationController(rootViewController: searchViewController)
        nc.navigationBar.prefersLargeTitles = true
        nc.tabBarItem.image = #imageLiteral(resourceName: "search")
        nc.tabBarItem.title = "Search"
        return nc
    }()
    
    private lazy var viewController: UINavigationController = {
        let viewController = ViewController()
        let nc = UINavigationController(rootViewController: viewController)
        nc.navigationBar.prefersLargeTitles = true
        nc.tabBarItem.image = #imageLiteral(resourceName: "library")
        nc.tabBarItem.title = "Library"
        return nc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.tintColor = #colorLiteral(red: 0.9921568627, green: 0.1764705882, blue: 0.3333333333, alpha: 1)
        viewControllers = [searchViewController, viewController]
    }

}
