//
//  MainViewController.swift
//  Sopt_iOS_1Week_Assignment
//
//  Created by 김민희 on 2020/10/13.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginButtonDidTap(_ sender: UIButton) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "LoginViewController") else {
            return
        }
        //dvc.modalPresentationStyle = .fullScreen
        //self.present(dvc, animated: true, completion: nil)
        self.navigationController?.navigationBar.isHidden = false
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
