//
//  LoginViewController.swift
//  Sopt_iOS_1Week_Assignment
//
//  Created by 김민희 on 2020/10/13.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var partTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }
    
    @IBAction func LoginDidTab(_ sender: UIButton) {
        // "로그인" 버튼 클릭 시 event
        // 첫 화면으로 입력받은 값 넘겨주기
        if let mainView = self.navigationController?.viewControllers[0] as? MainViewController {
            mainView.part = self.partTextField.text
            mainView.name = self.nameTextField.text
        }
        // 갈때는 다시 navigation bar 숨겨주기
        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goSignDidTab(_ sender: UIButton) {
        // "회원가입" 버튼 클릭 시 event
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "SignViewController") else {
            return
        }
        self.navigationController?.pushViewController(dvc, animated: true)
        
    }
    
}

extension LoginViewController {
    func setView() {
        self.navigationItem.title = "Login"
        // navigation bar에 back 버튼은 숨겨주기
        self.navigationItem.setHidesBackButton(true, animated: true)
    }
}
