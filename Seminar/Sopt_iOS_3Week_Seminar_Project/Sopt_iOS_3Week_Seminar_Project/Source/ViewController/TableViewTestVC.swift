//
//  TableViewTestVC.swift
//  Sopt_iOS_3Week_Seminar_Project
//
//  Created by 김민희 on 2020/10/31.
//

import UIKit

class TableViewTestVC: UIViewController {

    @IBOutlet weak var musicRankTableView: UITableView!
    
    var musicRank : [Music] = []
    override func viewDidLoad() {
        musicRankTableView.delegate = self
        musicRankTableView.dataSource = self
        super.viewDidLoad()
        setMusicData()
        
        // Do any additional setup after loading the view.
    }
    
    func setMusicData() {
        musicRank.append(contentsOf: [
            Music(title: "Lovesick Girls", singer: "BLACK PINK", albumImageName: "blackpink"),
            Music(title: "Dynamite", singer: "방탄소년단", albumImageName: "bts"),
            Music(title: "positions", singer: "Ariana Grande", albumImageName: "ariana"),
            Music(title: "놓아줘 (with 태연)", singer: "크러쉬", albumImageName: "crush"),
            Music(title: "I CAN'T STOP ME", singer: "TWICE", albumImageName: "twice"),
            Music(title: "Make A Wish (Birthday Song)", singer: "NCT U", albumImageName: "nctu"),
            Music(title: "ALIEN", singer: "이수현", albumImageName: "leesuhyeon"),
            Music(title: "DON'T TOUCH ME", singer: "환불원정대", albumImageName: "hwanbool"),
            Music(title: "Pretty Savage", singer: "BLACKPINK", albumImageName: "blackpink"),
            Music(title: "Bet You Wanna (feat. Cardi B)", singer: "BLACKPINK", albumImageName: "blackpink")
        ])
    }

}

extension TableViewTestVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(musicRank.count)
        return musicRank.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MusicRankCell.identifier) as? MusicRankCell else {
            return UITableViewCell()
        }
        cell.setCell(rank: indexPath.row, music: musicRank[indexPath.row])
        print(MusicRankCell.identifier)
        return cell
    }
    
}

extension TableViewTestVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectMusic = musicRank[indexPath.row]
        let storyboard = UIStoryboard(name: "MusicInfo", bundle: nil)
        if let destination = storyboard.instantiateViewController(identifier: "MusicInfoVC") as? MusicInfoVC {
            destination.music = selectMusic
            self.navigationController?.pushViewController(destination, animated: true)
        }
    }
}
