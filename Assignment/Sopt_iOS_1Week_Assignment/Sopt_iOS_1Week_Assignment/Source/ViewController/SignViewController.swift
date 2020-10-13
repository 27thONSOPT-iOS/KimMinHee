//
//  SignViewController.swift
//  Sopt_iOS_1Week_Assignment
//
//  Created by 김민희 on 2020/10/13.
//

import UIKit

class SignViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Sign Up"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignButtonDidTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
