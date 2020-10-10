//
//  ViewController.swift
//  Sopt_iOS_1Week_Seminar_Project
//
//  Created by 김민희 on 2020/10/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    
    @IBAction func touchUpButton(_ sender: UIButton) {
        helloLabel.text = "우와 텍스트가 바꼈다~"
        helloLabel.sizeToFit()
    }
    
    @IBAction func touchUpPresent(_ sender: UIButton) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "SecondViewController") else {
            return
        }
        self.navigationController?.pushViewController(dvc, animated: true)
//        self.present(dvc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

