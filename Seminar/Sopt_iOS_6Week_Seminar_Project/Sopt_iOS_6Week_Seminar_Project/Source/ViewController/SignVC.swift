//
//  SignVC.swift
//  Sopt_iOS_6Week_Seminar_Project
//
//  Created by 김민희 on 2020/11/26.
//

import UIKit

class SignVC: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var signButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signUpTouch(_ sender: Any) {
        guard let emailText = emailTextField.text,
              let passwordText = pwTextField.text,
              let usernameText = nameTextField.text else {
            return
        }
        AuthService.shared.signUp(email: emailText, password: passwordText, username: usernameText) { (networkResult) in
            switch networkResult {
            case .success(let data):
                if let SignUpData = data as? SignUpData {
                    self.successAlert(title: "회원가입 성공", message: "\(SignUpData.userName)님")
                    guard let loginVc = self.presentingViewController as? LoginVC else {
                        return
                    }
                    loginVc.email = SignUpData.email
                    loginVc.pw = self.pwTextField.text
                }
                print("success")
            case .requestErr(let msg):
                if let message = msg as? String {
                    self.cancleAlert(title: "로그인 실패", message: message)
                }
            case .pathErr:
                print("pathErr")
            case .serverErr:
                print("serverErr")
            case .networkFail:
                print("networkFail")
            }
        }
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        
        self.view.endEditing(true)
        
    }
    
}
extension SignVC {
    
    func cancleAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인",style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    func successAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인",style: .default) { (ok) in
            self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
