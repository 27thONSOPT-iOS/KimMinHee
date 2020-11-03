//
//  SoptWorkingCell.swift
//  Sopt_iOS_Assignment
//
//  Created by 김민희 on 2020/11/04.
//

import UIKit

class SoptWorkingCell: UICollectionViewCell {
    static let identifier = "SoptWorkingCell"
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tagLabel: UILabel!
    
    func setProfile(_ profile: Profile) {
        profileImageView.image = profile.makeProfile()
        nameLabel.text = profile.name
        tagLabel.text = profile.tag
    }
    override func awakeFromNib() {
        setView()
    }
    func setView() {
        nameLabel.font = UIFont.boldSystemFont(ofSize: 12.0)
        nameLabel.textColor = .white
        tagLabel.font = UIFont.systemFont(ofSize: 11.0)
        tagLabel.numberOfLines = 0
        
    }
}
