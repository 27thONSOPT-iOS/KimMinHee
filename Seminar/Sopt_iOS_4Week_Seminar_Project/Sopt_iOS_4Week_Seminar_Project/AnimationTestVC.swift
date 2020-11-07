//
//  AnimationTestVC.swift
//  Sopt_iOS_4Week_Seminar_Project
//
//  Created by 김민희 on 2020/11/07.
//

import UIKit

class AnimationTestVC: UIViewController {

    
    @IBOutlet weak var catImageView: UIImageView!
    
    
    @IBAction func touchUpStart(_ sender: Any) {
//        UIView.animate(withDuration: 2.0, animations: {
//            self.catImageView.alpha = 0
//        })
//        UIView.animate(withDuration: 2.0, animations: {
//            self.catImageView.alpha = 0
//            self.catImageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        }) { (finish) in
//            UIView.animate(withDuration: 2.0, animations: {
//                self.catImageView.alpha = 1
//                self.initPosition()
//            }, completion: {
//                (finished) in
//                if finished {
//                    print("ㅂ2ㅂ2")
//                }
//            })
//        }
        UIView.animate(withDuration: 2.0, animations: {
            
            // CGAffineTransform는 제약조건에 상관없이 움직일 수 있음.
            let scale = CGAffineTransform(scaleX: 0.5, y: 0.5)
            // 크기를 현재 크기의 n배로 만들어줌
            let move = CGAffineTransform(translationX: 20, y: -200)
            // 현재 위치에서 n만큼 더 움직이겠다.
            let rotate = CGAffineTransform(rotationAngle: .pi)
            // pi는 180도 돌리기~ 현재 위치에서 n만큼 회전하기
            let combine = scale.concatenating(move).concatenating(rotate)
//            UIView.animate(withDuration: 1.0, delay: 0) {
//                self.catImageView.transform = combine
//            }
            UIView.animate(withDuration: 1.0, animations: { self.catImageView.transform = combine
            }) { finished in UIView.animate(withDuration: 1.0) {
                self.catImageView.transform = .identity }
                // identity 속성을 통해 원래대로 되돌리기 가능.
            }
            
        })
    }
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    func initPosition() {
        catImageView.frame = CGRect(x: 67, y: 116, width: 250, height: 250)
    }
}
