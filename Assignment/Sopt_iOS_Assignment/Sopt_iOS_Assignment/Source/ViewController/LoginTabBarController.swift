//
//  LoginTabBarController.swift
//  Sopt_iOS_Assignment
//
//  Created by 김민희 on 2020/11/13.
//

import UIKit

class LoginTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
        // Do any additional setup after loading the view.
    }
    

}
extension LoginTabBarController {
    func setTabBar() {
        
        self.tabBar.tintColor = UIColor(red: 254/255, green: 214/255, blue: 0/255, alpha: 1)
        
        guard let loginVC = self.storyboard?.instantiateViewController(identifier: "MainViewController") as? MainViewController else {
            return
        }
        let collectionStoryboard = UIStoryboard.init(name: "Collection", bundle: nil)
        
        guard let collectionVC = collectionStoryboard.instantiateViewController(identifier: "CollectionTestVC") as? CollectionTestVC else {
            return
        }
        loginVC.tabBarItem.title = "Home"
        loginVC.tabBarItem.image = UIImage(systemName: "house")
        
        collectionVC.tabBarItem.title = "SOPT+WORKING"
        collectionVC.tabBarItem.image = UIImage(systemName: "paperplane")
//        collectionVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        
        setViewControllers([loginVC, collectionVC], animated: true) }
}
