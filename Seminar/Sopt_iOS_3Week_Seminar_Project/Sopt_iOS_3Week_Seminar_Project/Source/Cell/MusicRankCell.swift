//
//  MusicRankCell.swift
//  Sopt_iOS_3Week_Seminar_Project
//
//  Created by 김민희 on 2020/10/31.
//

import UIKit

class MusicRankCell: UITableViewCell {
    static let identifier = "MusicRankCell"
    
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    func setCell(rank: Int, music: Music) {
        albumImageView.image = music.makeAlbumImage()
        rankLabel.text = "\(rank + 1)"
        // rank값은 0부터 시작 -> +1
        titleLabel.text = music.title
        singerLabel.text = music.singer
    }

}
