//
//  BaseTabBarController.swift
//  AppStoreJSONApis
//
//  Created by Vasiliy Matveev on 10.06.2020.
//  Copyright © 2020 Vasiliy Matveev. All rights reserved.
//


import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        
        let redViewController = UIViewController()
        redViewController.view.backgroundColor = .red
        redViewController.navigationItem.title = "Apps"
        let redNavController = UINavigationController(rootViewController: redViewController)
        redNavController.navigationBar.prefersLargeTitles = true
        redNavController.tabBarItem.title = "Apps"
        redNavController.tabBarItem.image = UIImage(named: "apps")
        
        let blueViewController = UIViewController()
        blueViewController.view.backgroundColor = .blue
        blueViewController.navigationItem.title = "Search"
        let blueNavController = UINavigationController(rootViewController: blueViewController)
        blueNavController.navigationBar.prefersLargeTitles = true
        blueNavController.tabBarItem.title = "Search"
        blueNavController.tabBarItem.image = UIImage(named: "search")
        
        
        viewControllers = [
        redNavController,
        blueNavController
        ]
        
    }
    
}
