//
//  LoginViewController.swift
//  Sopt_iOS_1Week_Assignment
//
//  Created by 김민희 on 2020/10/13.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        self.navigationItem.title = "Login"
        self.navigationItem.setHidesBackButton(true, animated: true)
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goHomeDidTab(_ sender: UIButton) {
        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goSignDidTab(_ sender: UIButton) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "SignViewController") else {
            return
        }
        self.navigationController?.pushViewController(dvc, animated: true)
        
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
