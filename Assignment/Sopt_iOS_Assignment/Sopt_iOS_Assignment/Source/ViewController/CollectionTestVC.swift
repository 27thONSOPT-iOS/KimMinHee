//
//  CollectionTestVC.swift
//  Sopt_iOS_Assignment
//
//  Created by 김민희 on 2020/11/04.
//

import UIKit

class CollectionTestVC: UIViewController {
    
    @IBOutlet weak var soptCollectioView: UICollectionView!
    @IBOutlet weak var writeButton: UIButton!
    private var profileList: [Profile] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setProfile()
        writeButton.layer.cornerRadius = 8
        soptCollectioView.dataSource = self
        soptCollectioView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    private func setProfile() {
        let profile1 = Profile(profileImageName: "WCB_MH", name: "김민희", tag: "#딩초 #ENTP #유튜브 #왕초보 #근본")
        let profile2 = Profile(profileImageName: "WCB_YJ", name: "최영재", tag: "#🦮 #아요2회차 #왕초보 #민초단 #문이과대통합")
        let profile3 = Profile(profileImageName: "WCB_JH", name: "송지훈", tag: "#28살처럼보이지만 #24살맞습니다^^ #모각공환영 #술자리환영")
        let profile4 = Profile(profileImageName: "WCB_JE", name: "황지은", tag: "#보라돌이 #ISFP #운팀2회차 #왕초보진심녀 #취중고백장인")
        let profile5 = Profile(profileImageName: "WCB_YS", name: "이예슬", tag: "#개발자 #ESFJ #몽글 #집사 #아요왕초보스터디")
        let profile6 = Profile(profileImageName: "WCB_SJ", name: "이수진", tag: "#테트리수진 #하드유저 #서브남주 #동물의숲_페이커 #맥시멀리스트")
        let profile7 = Profile(profileImageName: "WCB_SH", name: "류세화", tag: "#밈꿈나무 #지옥에서온민초단 #뇌절마스터")
        let profile8 = Profile(profileImageName: "WCB_BUDDY", name: "버디", tag: "#고구마성애자 #남자였음 #한창미운9살 #사람나이로63 #귀차니즘")
        profileList = [profile1,profile2,profile3,profile4,profile5,profile6,profile7,profile8]
        
        
    }
    
}
extension CollectionTestVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return profileList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SoptWorkingCell.identifier, for: indexPath) as? SoptWorkingCell else {
            return UICollectionViewCell() }
        cell.setProfile(profileList[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
            

            let headerview = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "SoptCollectionHeader", for: indexPath) as! SoptCollectionHeader
         
            return headerview
        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: self.view.frame.width, height: self.view.frame.width*(420/375))
    }
    
}

extension CollectionTestVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt
                            indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width-48-27) / 2,
                      height: (collectionView.frame.width-48-27) / 2 + 75)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0 }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 27
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 41, left: 24, bottom: 0, right: 24) }
}
