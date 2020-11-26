//
//  LoginVC.swift
//  Week6_homework
//
//  Created by kong on 2020/11/27.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpLogin(_ sender: Any) {
        
        guard let emailText = emailField.text,
              
              let passwordText = passwordField.text else {
            return
        }
        
        AuthService.shared.signIn(email: emailText, password:
                                    passwordText) { (networkResult) -> (Void) in
            switch networkResult {
            case .success(let data):
                if let signInData = data as? SignInData {
                    self.simpleAlert(title: "로그인 성공", message: "\(signInData.userName)님 로그인 성공!")
                    
                    UserDefaults.standard.set(signInData.userName, forKey: "userName")
                }
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
    

    @IBAction func touchUpSignUp(_ sender: Any) {
        let SignUpStoryboard = UIStoryboard(name: "SignUp", bundle: nil)
        if let dvc =  SignUpStoryboard.instantiateViewController(identifier: "SignUpVC") as? SignUpVC {dvc.modalPresentationStyle = .fullScreen
            self.present(dvc, animated: true, completion: nil)
        }
    }
    
    func simpleAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인",style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
