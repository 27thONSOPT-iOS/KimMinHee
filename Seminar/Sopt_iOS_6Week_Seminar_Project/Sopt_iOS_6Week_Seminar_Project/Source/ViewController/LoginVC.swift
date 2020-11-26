//
//  LoginVC.swift
//  Sopt_iOS_6Week_Seminar_Project
//
//  Created by 김민희 on 2020/11/21.
//

import UIKit

class LoginVC: UIViewController {
    
    var email : String?
    var pw : String?
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        if let email = self.email,
           let pw = self.pw {
            self.emailTextField.text = email
            self.pwTextField.text = pw
            touchUpLogin(1)
        }
    }
    
    func simpleAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인",style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        
        self.view.endEditing(true)
        
    }

    
    
    @IBAction func touchUpLogin(_ sender: Any) {
        guard let emailText = emailTextField.text,
              let passwordText = pwTextField.text else {
            return
        }
        AuthService.shared.signIn(email: emailText, password: passwordText) { (networkResult) in
            switch networkResult {
            case .success(let data):
                if let SignInData = data as? SignInData {
                    self.simpleAlert(title: "로그인 성공", message: "\(SignInData.userName)님")
                    UserDefaults.standard.set(SignInData.userName, forKey: "userName")
                }
                print("success")
            case .requestErr(let msg):
                if let message = msg as? String {
                    self.simpleAlert(title: "로그인 실패", message: message)
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
    
    @IBAction func touchUpSign(_ sender: Any) {
        guard let sign = self.storyboard?.instantiateViewController(identifier: "SignVC") as? SignVC else {
            return
        }
        sign.modalPresentationStyle = .fullScreen
        self.present(sign, animated: true, completion: nil)
        
    }
}
