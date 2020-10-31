//
//  Music.swift
//  Sopt_iOS_3Week_Seminar_Project
//
//  Created by 김민희 on 2020/10/31.
//

import UIKit

struct Music {
    var title: String
    var singer: String
    var albumImageName: String
    
    func makeAlbumImage() -> UIImage? {
        return UIImage(named: albumImageName)
    }
}
