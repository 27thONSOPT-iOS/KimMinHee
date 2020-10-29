//
//  SoptWorkingViewController.swift
//  Sopt_iOS_1Week_Assignment
//
//  Created by 김민희 on 2020/10/30.
//

import UIKit

class SoptWorkingViewController: UIViewController, UIScrollViewDelegate {

    
    
    @IBOutlet weak var soptScrollView: UIScrollView!
    @IBOutlet weak var writeButton: UIButton!
    @IBOutlet weak var topButton: UIButton!
    @IBAction func topButtonDidTap(_ sender: UIButton) {
        soptScrollView.setContentOffset(CGPoint(x:0,y:0), animated: true)
    }
    
    @IBOutlet weak var bannerImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        soptScrollView.delegate = self
        // Do any additional setup after loading the view.
    }
    
}

extension SoptWorkingViewController {
    func setView() {
        topButton.isHidden = true
        writeButton.layer.cornerRadius = 8
        topButton.layer.cornerRadius = 0.5*topButton.bounds.size.width
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if soptScrollView.contentOffset.y > bannerImage.frame.size.height {
            topButton.isHidden = false
        } else {
            topButton.isHidden = true
        }
        
        
    }
}


