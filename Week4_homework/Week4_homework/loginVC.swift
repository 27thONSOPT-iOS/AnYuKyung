//
//  loginVC.swift
//  Week4_homework
//
//  Created by kong on 2020/11/13.
//

import UIKit

class loginVC: UIViewController {

    @IBOutlet var loginView: UIView!
    @IBOutlet weak var idText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moveviewwithkeyboard()

        // Do any additional setup after loading the view.
    }
    
    @objc func keyboardwillshow(notification:NSNotification) {
        print("keyboard will show")
        
        //키보드 사이즈 값
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            //키보드 사이즈가 존재한다
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height / 2
            }
            UIView.animate(withDuration: 0.3, animations: {
                            self.view.layoutIfNeeded()
                        })
        }
        
    }
    
    @objc func keyboardwillhide(notification:NSNotification) {
        print("keyboard will hide")
        if self.view.frame.origin.y != 0{
            self.view.frame.origin.y = 0
        }
        UIView.animate(withDuration: 0.3, animations: {
                        self.view.layoutIfNeeded()
                    })
    }

    func moveviewwithkeyboard(){
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardwillshow), name: UIResponder.keyboardDidShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardwillhide), name: UIResponder.keyboardDidHideNotification, object: nil)
    }
    
}
