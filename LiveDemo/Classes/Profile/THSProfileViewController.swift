//
//  THSProfileViewController.swift
//  LiveDemo
//
//  Created by tuhaisheng on 2017/5/24.
//  Copyright © 2017年 tuhaisheng. All rights reserved.
//

import UIKit

class THSProfileViewController: THSBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension THSBaseViewController{
    fileprivate func setUpUI(){
        setUpNavigationBar()
    }
    
    private func setUpNavigationBar(){
        //1、左侧logoItem
        let logoImag = UIImage(named: "home-logo")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: logoImag, style: .plain, target: nil, action: nil)
        
        
        //2、设置右侧收藏的item
        let collectImg = UIImage(named: "search_btn_follow")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: collectImg, style: .plain, target: self, action: #selector(followItemClick))
        
        
        // 3.搜索框
        let searchFrame = CGRect(x: 0, y: 0, width: 200, height: 32)
        let searchBar = UISearchBar(frame: searchFrame)
        searchBar.placeholder = "主播昵称/房间号/链接"
        navigationItem.titleView = searchBar
        searchBar.searchBarStyle = .minimal
        let searchFiled = searchBar.value(forKey: "_searchField") as? UITextField
        searchFiled?.textColor = UIColor.white
    }
    
//    func followItemClick() {
//        
//    }
}

// MARK:- 事件监听函数
extension THSBaseViewController {
     @objc fileprivate func followItemClick() {
        print("------")
    }
}

