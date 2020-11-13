//
//  MainViewController.swift
//  Sopt_iOS_1Week_Assignment
//
//  Created by 김민희 on 2020/10/13.
//

import UIKit

class MainViewController: UIViewController {
    
    var part: String?
    var name: String?
    
    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // LoginViewController 다녀오면 실행
        // 받아온 값 넣어주기
        if let sendPart = self.part,
           let sendName = self.name {
            self.partLabel.text = sendPart
            self.nameLabel.text = "\(sendName)님 안녕하세요~~☺️"
            
        }
    }
    
    @IBAction func LoginButtonDidTap(_ sender: UIButton) {
        // "로그인 하러 가기" 버튼 클릭 시 event
        
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "TabLoginVC") else {
            return
        }
        dvc.modalPresentationStyle = .fullScreen
        self.present(dvc, animated: true, completion: nil)
    }
    
    
}
extension MainViewController {
    func setView() {
        // 기본 값 설정
        self.partLabel.text = "파트장"
        self.nameLabel.text = "주혁님 안녕하세요~~😉"
    }
}
