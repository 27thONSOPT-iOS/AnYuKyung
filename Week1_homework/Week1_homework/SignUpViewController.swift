//
//  SignUpViewController.swift
//  Week1_homework
//
//  Created by kong on 2020/10/14.
//

import UIKit

class SignUpViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignUpBtn(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    //    guard; let dvc =
    //        self().storyboard?.instantiateViewController(identifier:"SignUpViewController"); else {
    //    return
    //    }
    //    self.present(dvc, animated: true, completion: nil)
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
