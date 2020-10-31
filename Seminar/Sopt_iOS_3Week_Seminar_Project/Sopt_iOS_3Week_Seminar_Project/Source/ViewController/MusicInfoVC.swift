//
//  MusicInfoVC.swift
//  Sopt_iOS_3Week_Seminar_Project
//
//  Created by 김민희 on 2020/10/31.
//

import UIKit

class MusicInfoVC: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var music: Music?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        // Do any additional setup after loading the view.
    }
    func setLayout() {
        if let music = self.music {
            titleLabel.text = music.title
            singerLabel.text = music.singer
            imageView.image = music.makeAlbumImage()
        }
    }

}
