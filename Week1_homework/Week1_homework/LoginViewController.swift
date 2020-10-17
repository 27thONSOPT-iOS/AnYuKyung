//
//  LoginViewController.swift
//  Week1_homework
//
//  Created by kong on 2020/10/14.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var part: UITextField!
    @IBOutlet weak var name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var loginbtn: UIView!
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    @IBAction func LoginBtn(_ sender: Any) {
//        self.dismiss(animated:true,completion:nil)
        let preVC = self.presentingViewController
        guard let vc = preVC as? ViewController else {
                    return
                }
        
        
        vc.userpart = self.part.text
        vc.username = self.name.text
        
        // modal 스타일 변경
        
        vc.modalPresentationStyle = .fullScreen
        self.presentingViewController?.dismiss(animated: true)
//        self.present(dvc, animated: true, completion: nil)
    }
    
}
