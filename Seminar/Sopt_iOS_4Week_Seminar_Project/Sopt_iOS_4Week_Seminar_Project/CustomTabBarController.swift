//
//  CustomTabBarController.swift
//  Sopt_iOS_4Week_Seminar_Project
//
//  Created by 김민희 on 2020/11/07.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
        // Do any additional setup after loading the view.
    }
    func setTabBar() {
        guard let mintVC = self.storyboard?.instantiateViewController(identifier: "MintVC") as? MintVC,
              let YellowVC = self.storyboard?.instantiateViewController(identifier: "YellowVC") as? YellowVC else { return
        }
        mintVC.tabBarItem.title = "Mint"
        mintVC.tabBarItem.image = UIImage(systemName: "house")
        mintVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        YellowVC.tabBarItem.title = "Yellow"
        YellowVC.tabBarItem.image = UIImage(systemName: "person")
        YellowVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        setViewControllers([mintVC, YellowVC], animated: true) }
}
