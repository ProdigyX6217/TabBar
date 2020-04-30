//
//  TabBarController.swift
//  TabBarDemo
//
//  Created by Adriana González Martínez on 2/17/20.
//  Copyright © 2020 Adriana González Martínez. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        setupViewControllers()
    }
    
    func setupViewControllers(){
        let vcNorth = ContinentVC()
        vcNorth.imageName = "northAmerica"
        vcNorth.title = "North America"
        vcNorth.view.backgroundColor = UIColor.blue
        vcNorth.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        vcNorth.tabBarItem = UITabBarItem(title: vcNorth.title, image: UIImage(named: "heart"), selectedImage: UIImage(named: "heart"))
        let navController = UINavigationController(rootViewController:vcNorth)
        
        let vcSouth = ContinentVC()
        vcSouth.imageName = "southAmerica"
        vcSouth.title = "South America"
        vcSouth.view.backgroundColor = UIColor.red
        vcSouth.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        vcSouth.tabBarItem = UITabBarItem(title: vcSouth.title, image: UIImage(named: "heart"), selectedImage: UIImage(named: "heart"))
        let navController1 = UINavigationController(rootViewController:vcSouth)
        
        let vcAfrica = ContinentVC()
        vcAfrica.imageName = "africa"
        vcAfrica.title = "Africa"
        vcAfrica.view.backgroundColor = UIColor.purple
        vcAfrica.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        vcAfrica.tabBarItem = UITabBarItem(title: vcAfrica.title, image: UIImage(named: "heart"), selectedImage: UIImage(named: "heart"))
        let navController2 = UINavigationController(rootViewController:vcAfrica)
        
        let vcAsia = ContinentVC()
        vcAsia.imageName = "asia"
        vcAsia.title = "Asia"
        vcAsia.view.backgroundColor = UIColor.green
        vcAsia.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        vcAsia.tabBarItem = UITabBarItem(title: vcAsia.title, image: UIImage(named: "heart"), selectedImage: UIImage(named: "heart"))
        let navController3 = UINavigationController(rootViewController:vcAsia)
        
        
        let vcEurope = ContinentVC()
        vcEurope.imageName = "europe"
        vcEurope.title = "Europe"
        vcEurope.view.backgroundColor = UIColor.orange
        vcEurope.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        vcEurope.tabBarItem = UITabBarItem(title: vcEurope.title, image: UIImage(named: "heart"), selectedImage: UIImage(named: "heart"))
        let navController4 = UINavigationController(rootViewController:vcEurope)
        
        let vcAustralia = ContinentVC()
        vcAustralia.imageName = "australia"
        vcAustralia.title = "Australia"
        vcAustralia.view.backgroundColor = UIColor.gray
        vcAustralia.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        vcAustralia.tabBarItem = UITabBarItem(title: vcAustralia.title, image: UIImage(named: "heart"), selectedImage: UIImage(named: "heart"))
        let navController5 = UINavigationController(rootViewController:vcAustralia)
        
        
        self.viewControllers = [navController,navController1,navController2,navController3,navController4,navController5]
        self.tabBar.barTintColor = UIColor.black
        self.tabBar.tintColor = UIColor.white
        


    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        item.badgeValue = "1"
    }
}
