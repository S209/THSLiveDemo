//
//  THSCustUINavigationController.swift
//  LiveDemo
//
//  Created by tuhaisheng on 2017/5/25.
//  Copyright © 2017年 tuhaisheng. All rights reserved.
//

import UIKit

class THSCustUINavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UINavigationBar.appearance().barTintColor = UIColor(red: 113.0/255.0, green: 189.0/255.0, blue: 156.0/255.0, alpha: 1.0)
        self.navigationBar.barStyle = UIBarStyle.blackTranslucent;
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
