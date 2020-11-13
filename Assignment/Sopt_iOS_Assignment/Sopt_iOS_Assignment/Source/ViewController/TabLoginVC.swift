//
//  TabLoginVC.swift
//  Sopt_iOS_Assignment
//
//  Created by 김민희 on 2020/11/13.
//

import UIKit

class TabLoginVC: UIViewController {
    
    
    @IBOutlet weak var partTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBAction func loginButtonDidTap(_ sender: Any) {
        guard let tabController = self.presentingViewController as? LoginTabBarController else {
            return
        }
        if let mainVC = tabController.viewControllers?[0] as? MainViewController {
            mainVC.part = self.partTextField.text
            mainVC.name = self.nameTextField.text
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        // Do any additional setup after loading the view.
    }
    
    
}
extension TabLoginVC {
    func setView() {
        partTextField.delegate = self
        nameTextField.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(moveUp(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(moveDown(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func moveUp(_ sender: Notification) {
        
        self.view.frame.origin.y = -100
        
    }
    @objc func moveDown(_ sender: Notification) {
        self.view.frame.origin.y = 0
    }
    
}

extension TabLoginVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
