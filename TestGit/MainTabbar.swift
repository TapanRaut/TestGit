//
//  MainTabbar.swift
//  TestGit
//
//  Created by Tapan Raut on 28/07/23.
//

import UIKit

class MainTabbar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        viewControllers = [
            createViewControllers(vc: HomeViewController(), backgroundColour: UIColor.white, title: "today", image: "today", preferdLargeTitle: true),
            createViewControllers(vc: ProfileViewController(), backgroundColour: UIColor.red, title: "apps", image: "apps", preferdLargeTitle: true),
            createViewControllers(vc: SearchViewController(), backgroundColour: UIColor.white, title: "search", image: "search", preferdLargeTitle: true)
           
           
        ]
    }
   

    private func createViewControllers(vc: UIViewController, backgroundColour: UIColor, title: String, image: String, preferdLargeTitle: Bool) -> UIViewController{
        
        vc.navigationItem.title = title
        
        let nav = UINavigationController(rootViewController: vc)
        nav.view.backgroundColor = backgroundColour
        nav.tabBarItem.image = UIImage(systemName: image)
        nav.tabBarItem.title = title
        nav.navigationBar.prefersLargeTitles = preferdLargeTitle
        return nav
        
    }
}
