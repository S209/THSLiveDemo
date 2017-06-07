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
        let item1 : UITabBarItem = UITabBarItem (title: "直播", image: UIImage(named: "live-n"), selectedImage: UIImage(named: "live-p")?.withRenderingMode(.alwaysOriginal))
        living.tabBarItem = item1
        let custItemOne = THSCustUINavigationController(rootViewController: living)
        
        let item2 : UITabBarItem = UITabBarItem (title: "排行", image: UIImage(named: "ranking-n"), selectedImage: UIImage(named: "ranking-p")?.withRenderingMode(.alwaysOriginal))
        rangkVC.tabBarItem = item2
        let custItemTwo = THSCustUINavigationController(rootViewController: rangkVC)
        
        let item3 : UITabBarItem = UITabBarItem (title: "发现", image: UIImage(named: "found-n"), selectedImage: UIImage(named: "found-p")?.withRenderingMode(.alwaysOriginal))
        findVC.tabBarItem = item3
        let custItemThree = THSCustUINavigationController(rootViewController: findVC)
        
        let item4 : UITabBarItem = UITabBarItem (title: "我的", image: UIImage(named: "mine-n"), selectedImage: UIImage(named: "mine-p")?.withRenderingMode(.alwaysOriginal))
        profile.tabBarItem = item4
        let custItemFour = THSCustUINavigationController(rootViewController: profile)
    
        let tabArray = [custItemOne,custItemTwo,custItemThree,custItemFour]
        self.viewControllers = tabArray
        
        
        //tabBar 底部工具栏背景颜色 (以下两个都行)
        self.tabBar.barTintColor = UIColor.white
//        self.tabBar.backgroundColor = UIColor.brown
        //设置 tabBar 工具栏字体颜色 (未选中  和  选中)
        UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(object:UIColor.gray, forKey:NSForegroundColorAttributeName as NSCopying) as? [String : AnyObject], for:UIControlState.normal);
        UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(object:UIColor.init(colorLiteralRed: 216/255.0, green: 164/255.0, blue: 78/255.0, alpha: 1.0), forKey:NSForegroundColorAttributeName as NSCopying) as? [String : AnyObject], for:UIControlState.selected);

    }
}
