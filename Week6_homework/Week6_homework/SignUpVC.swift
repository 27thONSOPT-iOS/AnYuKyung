//
//  SignUpVC.swift
//  Week6_homework
//
//  Created by kong on 2020/11/27.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func touchUpSign(_ sender: Any) {
        
        guard let email = emailTextField.text,
              let password = passWordTextField.text,
              let userName = userNameTextField.text
        
              else {
            return
        }
        
        UserService.shared.signIn(email: email, password: password, username: userName) { (networkResult) -> (Void) in
            switch networkResult {
            case .success(let data):
                if let signInData = data as? SignInData {
                    self.simpleAlert(title: "회원가입 성공", message: "\(signInData.userName)님 회원가입 성공!")

                    UserDefaults.standard.set(signInData.userName, forKey: "userName")
                }
                print(data)
            case .requestErr(let msg):
                if let message = msg as? String {
                    self.simpleAlert(title: "회원가입 실패", message: message)
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
    
    func simpleAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인",style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}
