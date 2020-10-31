//
//  PartBannerCell.swift
//  Sopt_iOS_3Week_Seminar_Project
//
//  Created by 김민희 on 2020/10/31.
//

import UIKit

class PartBannerCell: UICollectionViewCell {
    static let identifier = "PartBannerCell"
    
    @IBOutlet weak var bannerImage: UIImageView!
    func setImage(Imagename: String) {
        bannerImage.image = UIImage(named: Imagename)
    }
}
