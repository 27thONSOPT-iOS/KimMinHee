//
//  Profile.swift
//  Sopt_iOS_Assignment
//
//  Created by 김민희 on 2020/11/04.
//

import UIKit
struct Profile {
    var profileImageName: String
    var name: String
    var tag: String
    
    func makeProfile() -> UIImage? {
        return UIImage(named: profileImageName)
    }
}
