//
//  ViewController.swift
//  Week1_homework
//
//  Created by kong on 2020/10/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var partlab: UILabel!
    @IBOutlet weak var namelab: UILabel!
    
    var userpart : String?
    var username : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLabel()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        setLabel()
    }
    
    @IBAction func GoLoginBtn(_ sender: Any) {
    }
    func setLabel() {
        
        if let userpart = self.userpart,
           let username = self.username {
            
            self.partlab.text = userpart
            self.partlab.sizeToFit()
            
            self.namelab.text = username
            self.namelab.sizeToFit()
        }
        
    }
    
    
}

