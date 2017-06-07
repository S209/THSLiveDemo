//
//  RootTabBarController.swift
//  LiveDemo
//
//  Created by tuhaisheng on 2017/5/24.
//  Copyright © 2017年 tuhaisheng. All rights reserved.
//

import UIKit

class RootTabBarController: UITabBarController {
    let living = THSLiving ()
    let rangkVC = THSRankingController ()
    let findVC = THSFindController ()
    let profile = THSMeController ()
    override func viewDidLoad() {
        super.viewDidLoad()
       createSubViewControllers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension RootTabBarController{
    fileprivate func createSubViewControllers(){
        let item1 : UITabBarItem = UITabBarItem (title: "直播", image: UIImage(named: "live-n"), selectedImage: UIImage(named: "live-p"))
        living.tabBarItem = item1
        let custItemOne = THSCustUINavigationController(rootViewController: living)
        
        let item2 : UITabBarItem = UITabBarItem (title: "排行", image: UIImage(named: "ranking-n"), selectedImage: UIImage(named: "ranking-p"))
        rangkVC.tabBarItem = item2
        let custItemTwo = THSCustUINavigationController(rootViewController: rangkVC)
        
        let item3 : UITabBarItem = UITabBarItem (title: "发现", image: UIImage(named: "found-n"), selectedImage: UIImage(named: "found-p"))
        findVC.tabBarItem = item3
        let custItemThree = THSCustUINavigationController(rootViewController: findVC)
        
        let item4 : UITabBarItem = UITabBarItem (title: "我的", image: UIImage(named: "mine-n"), selectedImage: UIImage(named: "mine-p"))
        profile.tabBarItem = item4
        let custItemFour = THSCustUINavigationController(rootViewController: profile)
    
        let tabArray = [custItemOne,custItemTwo,custItemThree,custItemFour]
        self.viewControllers = tabArray
    }
}
