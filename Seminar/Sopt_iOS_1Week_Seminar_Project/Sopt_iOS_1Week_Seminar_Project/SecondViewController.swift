//
//  SecondViewController.swift
//  Sopt_iOS_1Week_Seminar_Project
//
//  Created by 김민희 on 2020/10/10.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBAction func touchUpClose(_ sender: UIButton) {
//        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
